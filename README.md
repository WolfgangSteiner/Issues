Issues
======

A lightweight command line issues manager written in ruby.


Motivation
==========

Issues allows you to manage your bugs, improvements and tasks from the command line as part of your source git repository. Each issue created is assigned a random id, which allows for git-style DICS (distributed issue control system). No need to install an issue tracker with all its dependencies.


Usage
=====

Creating issues
---------------

```issues create [-b | -i | -t] "Issues heading"```