Issues
======

A lightweight command line issues manager written in ruby.


Motivation
----------

Issues allows you to manage your bugs, improvements and tasks from the command line as part of your source git repository. Each issue created is assigned a random id, which allows for git-style DICS (distributed issue control system). No need to install an issue tracker with all its dependencies.


Usage
-----

### Creating issues:

```
issues create "Issues title"
Options:
          --bug, -b:   create a bug
  --improvement, -i:   create an improvement
         --task, -t:   create a task
         --help, -h:   Show this message
```

Will create a bug, improvement or task, respectively. When no option ```[-b | -i | -t]``` is given, ```issues``` will try to guess the type, based on keywords contained in the heading, defaulting to creating a task.


### Listing issues:

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


Print a specific issue including its description.

```
issues list ID
```

### Resolving issues:
```
issues resolve ID
issues wontfix ID
issues duplicate ID OTHER_ID

Options:
  --commit, -c:   do a git commit
    --help, -h:   Show this message
```

Using the ```--commit``` option is equivalent to doing a ```git commit -a -m "Resolved issue #{ID} #{ISSUE_TITLE}```.
When specifying an ID, it is sufficient to give the first few digits, just enough that an open issue can be uniquely
identified.

### Deleting issues:
```
issues delete ID
```

### Editing issues:
```
issues edit ID

Options:
  --description, -d:   edit the issue description
         --help, -h:   Show this message
         
```

### Updating the issue type:
```
issues set-type {bug|improvement|task} ID [ID2 ...]
```

Example
-------

```
> issues create "Put water in kettle"
Created issue 992b87 Put water in kettle
> issues create "Put kettle on stove"
Created issue bbe372 Put kettle on stove
> issues create "Turn on stove"
Created issue 531eff Turn on stove
> issues create "Wait until water is boiling."
Created issue 851129 Wait until water is boiling.
> issues
992b87 (T) Put water in kettle                                                                         
bbe372 (T) Put kettle on stove                                                                         
531eff (T) Turn on stove                                                                               
851129 (T) Wait until water is boiling. 

> issues list bbe
#=====================================================================================================#
# bbe372 Task (open)  2012-06-20 20:22                                                                #
#                                                                                                     #
# Put kettle on stove                                                                                 #
#                                                                                                     #
#-----------------------------------------------------------------------------------------------------#
# Log:                                                                                                #
#-----------------------------------------------------------------------------------------------------#
# 2012-06-20 20:22 Issue created                                                                      #
#=====================================================================================================#
```
