Issues
======

A lightweight command line issues manager written in ruby.


Motivation
----------

Issues allows you to manage your bugs, improvements and tasks from the command line as part of your source git repository. Each issue created is assigned a random id, which allows for git-style DICS (distributed issue control system). No need to install an issue tracker with all its dependencies.


Usage
-----

### Creating issues

```
issues create "Issues title"
Options:
          --bug, -b:   create a bug
  --improvement, -i:   create an improvement
         --task, -t:   create a task
         --help, -h:   Show this message
```

Will create a bug, improvement or task, respectively. When no option ```[-b | -i | -t]```` is given, ```ìssues``` will try to guess the type, based on keywords contained in the heading, defaulting to creating a task.


### Listing issues

```
issues
issues list

Options:
           --all, -a:   list all issues
        --newest, -n:   list newest issues first (not supported yet)
        --oldest, -o:   list oldest issues first (not supported yet)
       --verbose, -v:   verbose list of issues
          --bugs, -b:   list bugs
  --improvements, -i:   list improvements
         --tasks, -t:   list tasks
          --help, -h:   Show this message
```


```
issues list ID
```
will print a specific issue including its description.


