# Git_Diff_NI
Script to compare NI binary files

# About
Comparing NI's binary files are a pain. Specially if you have them checked in with Git.

This is a simple script to run appropriate comparator for NI files and is intended to be used as External-Diff for Git.

# Feautures
* Autodetects and executes the comparator program based on file extensions as follow:
  * vi    (LabView)       -> Using LVCompare.exe
  * seq   (TestStand)     -> Using FileDifferLauncher.exe
* Exits silently if the file extension is not supported.

# Setup
1. Copy the "NICompare.sh" to a path accessible to git.
2. Setup the external diff command with arguments of "$LOCAL $REMOTE".

# Examples

## SourceTree
Follow the screenshot below:

![SourceTreeConfig](/Images/SourceTreeConfig.jpg)
