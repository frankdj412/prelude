# CMake generated Testfile for 
# Source directory: /Users/DJ/.emacs.d/elpa/irony-20140910.1332/server/test/elisp
# Build directory: /Users/DJ/.emacs.d/irony/test/elisp
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(irony-el "/Users/DJ/Applications/emacs.app/Contents/MacOS/Emacs" "-batch" "-l" "package" "--eval" "(package-initialize) (unless (require 'cl-lib nil t) (package-refresh-contents) (package-install 'cl-lib))" "-l" "/Users/DJ/.emacs.d/elpa/irony-20140910.1332/server/test/elisp/irony.el" "-f" "ert-run-tests-batch-and-exit")
add_test(irony-cdb-el "/Users/DJ/Applications/emacs.app/Contents/MacOS/Emacs" "-batch" "-l" "package" "--eval" "(package-initialize) (unless (require 'cl-lib nil t) (package-refresh-contents) (package-install 'cl-lib))" "-l" "/Users/DJ/.emacs.d/elpa/irony-20140910.1332/server/test/elisp/irony-cdb.el" "-f" "ert-run-tests-batch-and-exit")
