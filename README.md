# Git_Diff_NI
Script to compare NI binary files

#About
This is a simple script to run appropriate comparator for NI files.

#Feautures
* Autodetects and executes the comparator program based on file extensions as follow:
  * vi    (LabView)       -> Using LVCompare.exe
  * seq   (TestStand)     -> Using FileDifferLauncher.exe
* Exists silently if the file extension is not supported.

#Setup
1. Copy the "NICompare.sh" to a path accessible to git.
2. Setup the external diff command with arguments of "$LOCAL $REMOTE".

#Examples

##SourceTree
Follow the screenshot below:

![SourceTreeConfig](/Images/SourceTreeConfig.jpg)
