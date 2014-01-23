<!--@+leo-ver=5-thin-->
<!--@+node:peckj.20140123082920.3834: * @file README.md-->
<!--@@language md-->
# ltd-barebones

LTD barebones outline + scripts

See [the LTD Revised blog post](http://blog.suspended-chord.info/2013/11/18/leo-things-done-revised/) for more info.

<!--@+others-->
<!--@+node:peckj.20140123082920.4158: ** Usage-->
## Usage
The `@file ltd-scripts.txt` node contains all the @button and @nodewatch definitions that you'll need.

<!--@+others-->
<!--@+node:peckj.20140123082920.4159: *3* Required python modules-->
### Required python modules
Make sure you have the following python modules installed:

  - python-dateutil
<!--@+node:peckj.20140123082920.4160: *3* Required plugins-->
### Required plugins
Make sure at least the following plugins are enabled in your `myLeoSettings.leo` file:

  - contextmenu.py
  - mod_scripting.py
  - todo.py
  - nodewatch.py (make sure it's loaded *after* todo.py)
  - viewrendered.py
<!--@+node:peckj.20140123082920.4161: *3* scripting-at-rclick-nodes-->
### scripting-at-rclick-nodes
The `@bool scripting-at-rclick-nodes = True` node makes the mod_scripting.py plugin generate minibuffer commands for all the @rclick nodes in the outline.  This means you can call the 'mark-task-done' and 'generate-week-report' scripts with Alt-X, and also with the context menu (see below).
<!--@+node:peckj.20140123082920.4162: *3* Context menu definitions-->
### Context menu definitions
The `@data contextmenu_commands` node contains the following:

    mark-task-done Mark task done
    mark-task-done-yesterday Mark task done (yesterday)

This adds two items to the right-click context menu in the tree pane, which call the appropriate scripts.
<!--@+node:peckj.20140123082920.4163: *3* Creating tasks-->
### Creating tasks
To create a new task, simply switch to the appropriate chapter ("Recurring" or "Long-term Projects"), and then find the correct organizer node.  Then insert a child node (Ctrl-Insert).  The headline can be anything you find descriptive.

Somewhere in the body, you need to put one of the following directives:

    @work
    @responsibility
    @leisure

Additionally, if the task is a recurring task, you need to put one of the following recurrence directives in the body as well:

    @daily
    @daily-weekdays
    @weekly 
    @biweekly
    @monthly
    @bimonthly
    @quarterly
    @triannualy
    @semianually
    @annually
    @yearly

@annually and @yearly are synonyms.  @daily-weekdays is identical to @daily, except that it will skip weekends when rescheduling the task, i.e. it will reschedule a task from Friday to the following Monday.

After adding the recurrence directive, then use the Task pane (from todo.py) to add either a due date or a work date.  The scripts are smart enough to use either or both.

Your task has been created at this point.
<!--@+node:peckj.20140123082920.4164: *3* Completing tasks-->
### Completing tasks
When you have completed a task, select it in the tree pane (or use the nodewatch pane to jump to it if possible), and then perform one of the following three options (all do the exact same thing):

  - Alt-X mark-task-done
  - Right-click it, and choose 'Mark task done'
  - Right click the 'ltd' button, and choose 'mark-task-done'

You can also use 'mark-task-done-yesterday' if you completed the task yesterday and just forgot to mark it done then.

The script will move the task to the Reports chapter, mark it with the 'done' checkmark from todo.py, and reschedule a new copy of it if the task was recurring.
<!--@+node:peckj.20140123082920.4165: *3* How the rescheduling works-->
### How the rescheduling works
The rescheduling is a bit wonky because the logic is complex.  Basically, the task is rescheduled by adding a date-delta to the *current* due date or work date (which ever is earliest) according to the recurrence directive.  

This means that completing a recurring task after the due/work date will reschedule the task to the *next* expected due/work date, even if that date is still in the past.  For example, completing a @daily task that is two days behind it's due-date will reschedule it to be due yesterday.  Completing it again will cause it to be rescheduled for today.

This also means that completing a recurring task before the due/work date will reschedule the task to the *next* expected due/work date *from* the date it was assigned.  For example, completing a @monthly task a week in advance will reschedule it for a month and a week from today, instead of just one month.

In those cases, you may have to adjust the dates manually using the Task pane.
<!--@+node:peckj.20140123082920.4166: *3* Generating week reports-->
### Generating week reports
When a week is done, you can generate a week report by going to the Reports chapter and selecting a week node (i.e. '2014 Week 03').  Then, do one of the following (equivalent) actions:

  - Alt-X generate-week-report
  - Right-click the 'ltd' button, and select 'generate-week-report'
  
This will create a week-report node that has clones of all the tasks you completed that week, sorted into categories.  You may wish to alphabetize those by doing an Alt-A (sort-siblings), but that's up to you.
<!--@-others-->
<!--@-others-->
<!--@-leo-->
