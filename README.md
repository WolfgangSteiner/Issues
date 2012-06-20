Issues
======

A lightweight command line issues manager written in ruby.


Motivation
----------

Issues allows you to manage your bugs, improvements and tasks from the command line as part of your source git repository. Each issue created is assigned a random id, which allows for git-style DICS (distributed issue control system). No need to install an issue tracker with all its dependencies.


Usage
-----

### Creating issues

```issues create [-b | -i | -t] "Issues heading"```

Will create a bug, improvement or task, respectively. When no option ```[-b | -i | -t]```` is given, _issues_ will try to guess the type, based on keywords contained in the heading, defaulting to creating a task.


### Listing issues

```issues
issues list```

will list all open issues.