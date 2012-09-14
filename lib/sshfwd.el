;;; sshfwd.el -- emacs lisp for port forwarding via ssh
;; Copyright (C) 1999 Mark Plaksin
;; 
;; This program is free software; you can redistribute it and/or
;; modify it under the terms of the GNU General Public License
;; as published by the Free Software Foundation; either version 2
;; of the License, or (at your option) any later version.
;; 
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;; 
;; You should have received a copy of the GNU General Public License
;; along with this program; if not, write to the Free Software
;; Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
;; 

;;; Port forwarding requires passive ftp, so this command should
;;; invoke a program that is passive ftp.  On Linux, "pftp" is
;;; passive.  
(setq ange-ftp-ftp-program-name "pftp")

(defvar map-ssh-program "autossh" "Name of ssh program.")

(defun map-ssh-port-forward (localport host remoteport)
  "Sets up ssh port forwarding.
Assumes map-ssh-program points to ssh binary."
  (let* ((procname (concat localport ":" host ":" remoteport))
	 (buffname (concat "*" procname "*"))
	 (port-string (concat localport ":" host ":" remoteport)))
    ;; If buffname exists, assume forwarding is already set up.
    (if (get-buffer buffname)
	(message (concat "Forwarding already set up for " procname "."))
      (start-process procname buffname map-ssh-program "-M 22000" "-L" 
		     port-string host); "perl -e 'while(getppid > 1){sleep 30}'")
  ;    )))
      (set-process-filter (get-process procname) 'map-ssh-filter))))

(defun map-ssh-filter (proc string)
  "Prompts for password when STRING matches \".* password: $\".
Sends the password to PROC.  It has only been tested with ssh and does not
handle killed buffers properly."

  ;; This part stolen from the Emacs Lisp docs
  (with-current-buffer (process-buffer proc)
    (let ((moving (= (point) (process-mark proc))))
      
      (save-excursion
	;; Insert the text, advancing the process marker.
	(goto-char (process-mark proc))
	(insert string)
	(set-marker (process-mark proc) (point)))
      (if moving (goto-char (process-mark proc)))
      
      ;; map's part starts here
      
      ;; Useful for debugging
      ;;(message string)
      
      (if (string-match ".* password: $" string)
	  (process-send-string
	   proc
	   (concat
	    (read-passwd string)
	    "\n"))))))

