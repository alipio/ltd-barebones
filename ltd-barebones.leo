<?xml version="1.0" encoding="utf-8"?>
<!-- Created by Leo (http://leoeditor.com/leo_toc.html) -->
<?xml-stylesheet ekr_test?>
<leo_file xmlns:leo="http://www.leo-editor.org/2011/leo" >
<leo_header file_format="2" tnodes="0" max_tnode_index="0" clone_windows="0"/>
<globals body_outline_ratio="0.5" body_secondary_ratio="0.5">
	<global_window_position top="50" left="50" height="500" width="700"/>
	<global_log_window_position top="0" left="0" height="0" width="0"/>
</globals>
<preferences/>
<find_panel_settings/>
<vnodes>
<v t="peckj.20131118114637.5389"><vh>@chapters</vh>
<v t="peckj.20131118114637.5407"><vh>@chapter Long-term Projects</vh>
<v t="peckj.20131118114637.5408"><vh>Work</vh></v>
<v t="peckj.20131118114637.5409"><vh>Responsibility</vh></v>
<v t="peckj.20131118114637.5410"><vh>Leisure</vh></v>
</v>
<v t="peckj.20131118114637.5404"><vh>@chapter Reports</vh>
<v t="peckj.20131118114637.5406"><vh>Old</vh></v>
</v>
<v t="peckj.20131118114637.5399"><vh>@chapter Ideas</vh>
<v t="peckj.20131118114637.5400"><vh>Work</vh></v>
<v t="peckj.20131118114637.5401"><vh>Responsibility</vh></v>
<v t="peckj.20131118114637.5402"><vh>Leisure</vh></v>
</v>
<v t="peckj.20131118114637.5394"><vh>@chapter Notes</vh>
<v t="peckj.20131118114637.5395"><vh>Work</vh></v>
<v t="peckj.20131118114637.5396"><vh>Responsibility</vh></v>
<v t="peckj.20131118114637.5397"><vh>Leisure</vh></v>
</v>
<v t="peckj.20131118114637.5390"><vh>@chapter Recurring</vh>
<v t="peckj.20131118114637.5391"><vh>Work</vh></v>
<v t="peckj.20131118114637.5392"><vh>Responsibility</vh></v>
<v t="peckj.20131118114637.5393"><vh>Leisure</vh></v>
</v>
</v>
<v t="peckj.20131118114637.5266"><vh>@settings</vh>
<v t="peckj.20131118114637.5861"><vh>@bool nodewatch_autoexecute_scripts = True</vh></v>
<v t="peckj.20131118114637.5859"><vh>@bool scripting-at-rclick-nodes = True</vh></v>
<v t="peckj.20131118114637.5304"><vh>Buttons</vh>
<v t="peckj.20131118114637.5305"><vh>LTD stuff</vh>
<v t="peckj.20131118114637.5306"><vh>@button ltd</vh>
<v t="peckj.20131118114637.5318"><vh>@rclick mark-task-done</vh>
<v t="peckj.20131118114637.5319"><vh>&lt;&lt; docstring &gt;&gt;</vh></v>
<v t="peckj.20131118114637.5320"><vh>&lt;&lt; imports &gt;&gt;</vh></v>
<v t="peckj.20131118114637.5321"><vh>&lt;&lt; declarations &gt;&gt;</vh></v>
<v t="peckj.20131118114637.5322"><vh>task parsers</vh>
<v t="peckj.20131118114637.5323"><vh>grab_directives</vh></v>
<v t="peckj.20131118114637.5324"><vh>grab_recurrence</vh></v>
<v t="peckj.20131118114637.5325"><vh>grab_tasktype</vh></v>
</v>
<v t="peckj.20131118114637.5326"><vh>node helpers</vh>
<v t="peckj.20131118114637.5327"><vh>mark_node_done</vh></v>
<v t="peckj.20131118114637.5328"><vh>copy_node</vh></v>
<v t="peckj.20131118114637.5329"><vh>reschedule_node</vh></v>
<v t="peckj.20131118114637.5330"><vh>move_node_to_reports</vh></v>
</v>
</v>
<v t="peckj.20131118114637.5331"><vh>@rclick generate-week-report</vh>
<v t="peckj.20131118114637.5332"><vh>&lt;&lt; docstring &gt;&gt;</vh></v>
<v t="peckj.20131118114637.5333"><vh>&lt;&lt; declarations &gt;&gt;</vh></v>
<v t="peckj.20131118114637.5334"><vh>is_valid_week</vh></v>
<v t="peckj.20131118114637.5335"><vh>make_report_node</vh></v>
<v t="peckj.20131118114637.5336"><vh>clone_reports_to_report_node</vh></v>
</v>
</v>
</v>
</v>
<v t="peckj.20131118114637.5364"><vh>Nodewatch definitions</vh>
<v t="peckj.20131118114637.5380"><vh>@nodewatch LTD nodewatch definitions</vh>
<v t="peckj.20131118114637.5381"><vh>&lt;&lt; imports &gt;&gt;</vh></v>
<v t="peckj.20131118114637.5382"><vh>&lt;&lt; declarations &gt;&gt;</vh></v>
<v t="peckj.20131118114637.5383"><vh>get_tasks_by_date</vh></v>
<v t="peckj.20131118114637.5384"><vh>main</vh></v>
</v>
</v>
<v t="peckj.20131118114637.5387"><vh>Context menu definitions</vh>
<v t="peckj.20131118114637.5388"><vh>@data contextmenu_commands</vh></v>
</v>
</v>
</vnodes>
<tnodes>
<t tx="peckj.20131118114637.5266"></t>
<t tx="peckj.20131118114637.5304"></t>
<t tx="peckj.20131118114637.5305"></t>
<t tx="peckj.20131118114637.5306">@language python

g.es('Right click for options.', color='forestgreen')</t>
<t tx="peckj.20131118114637.5318" lineYOffset="4b002e">@language python

&lt;&lt; docstring &gt;&gt;

&lt;&lt; imports &gt;&gt;
&lt;&lt; declarations &gt;&gt;

@others

## main script
directives = grab_directives()
tasktype = grab_tasktype(directives)
recur = grab_recurrence(directives)
if tasktype is None:
  g.es('task nas no valid task type directive... not running script', color='red')
else:
  # run the rest of the script
  if recur:
    (orig_node, new_node) = copy_node()
    reschedule_node(new_node, recur)
  else:
    orig_node = p
    new_node = p.parent()
  mark_node_done()
  new_node_v = new_node.v # for selectPosition below (outline changes invalidating new_node)
  move_node_to_reports(orig_node, tasktype)
  new_node = c.vnode2position(new_node_v) # reestablishes new_node as a valid position
  c.selectPosition(new_node)
  c.redraw_now()
</t>
<t tx="peckj.20131118114637.5319">''' Does a few complex actions:
    1. Checks if the current node has a tasktype (i.e. a directive specified in valid_tasktypes),
       bails if it does not
    2. Checks if the current node has a recurrence directive (defined in valid_recurrences)
      2a. If it does:
        2aa. Copies node completely
        2ab. Reschedules the new copy according to the recurrence      
    3. Marks the current node done
    4. Moves the current node to the appropriate report node
    5. Selects either the new copy of the task (if it recurred), or the parent of the orignal task
       (if it did not recur), to prevent UI disorentation
    5. Redraws the UI to show updates
'''
</t>
<t tx="peckj.20131118114637.5320">## imports
import time
import datetime
from dateutil.relativedelta import relativedelta
import copy
from PyQt4 import QtCore</t>
<t tx="peckj.20131118114637.5321">valid_recurrences = {
  '@daily': relativedelta(days=1), 
  '@daily-weekdays': 'special', # handled corner case
  '@weekly': relativedelta(days=7), 
  '@biweekly': relativedelta(days=14),
  '@monthly': relativedelta(months=1),
  '@bimonthly': relativedelta(months=2),
  '@quarterly': relativedelta(months=3),
  '@triannualy': relativedelta(months=4),
  '@semianually': relativedelta(months=6),
  '@annually': relativedelta(years=1),
  '@yearly': relativedelta(years=1)
}

valid_tasktypes = ['@work', '@leisure', '@responsibility']</t>
<t tx="peckj.20131118114637.5322"></t>
<t tx="peckj.20131118114637.5323">def grab_directives():
  ''' populates a list with all the directives in the node's body '''
  directives = []
  for line in p.b.splitlines():
    if line.startswith('@'):
      directives.append(line.strip())
  return directives</t>
<t tx="peckj.20131118114637.5324">def grab_recurrence(directives):
  ''' returns the first valid recurrance as a relativedelta, or False if none '''  
  for d in directives:
    if d in valid_recurrences:
      return valid_recurrences[d]
  return False</t>
<t tx="peckj.20131118114637.5325">def grab_tasktype(directives):
  ''' determine task type from directives
      returns None if not a valid task type
  '''
  tasktype = None
  for d in directives:
    if d in valid_tasktypes:
      tasktype = d
      break
  return tasktype</t>
<t tx="peckj.20131118114637.5326"></t>
<t tx="peckj.20131118114637.5327">def mark_node_done():
  ''' marks the priority on the current node to 100, defined in todo.py as 'done' '''
  c.cleo.setPri(100)</t>
<t tx="peckj.20131118114637.5328">def copy_node():
  ''' copies the currently selected node into a new node directly after
      the current node.
      
      Also, makes sure to do a DEEP COPY on p.v.u, to prevent shared p.v's
  '''
  orig_node = p
  new_node = p.insertAfter()
  new_node.h = orig_node.h
  new_node.b = orig_node.b
  new_node.v.u = copy.deepcopy(orig_node.v.u)
  return (orig_node, new_node)</t>
<t tx="peckj.20131118114637.5329">def reschedule_node(node, recur): 
  ''' sets node's nextworkdate according to recur, which can have the following values:
      relativedelta - applied directly
      string 'special' - special case for @daily-weekdays
  '''
  date = c.cleo.getat(node.v, 'nextworkdate')
  if not date:
    date = datetime.date.today()
    g.es(type(date))
  if recur == 'special': #@daily-weekdays
    newdate = date + relativedelta(days=1)
    while newdate.weekday() &gt; 4:
      newdate = newdate + relativedelta(days=1)
  else:
    newdate = date + recur
    
  day,month,year = newdate.day, newdate.month, newdate.year
  c.cleo.set_due_date(p=node, field='nextworkdate', val=QtCore.QDate(year,month,day))</t>
<t tx="peckj.20131118114637.5330">def move_node_to_reports(node, tasktype):
  ''' moves the original node to the correct "Report" subtree '''
  ## move original node to the correct report directory
  ds = time.strftime("%m/%d/%Y")
  cal = datetime.date.today().isocalendar()
  weeknum = "%s Week %s" % (cal[0], cal[1]) # ex. '2013 Week 41'
  tasktype = tasktype[1:].title() # convert '@work' to 'Work', for example
  
  # find proper report node, create if it doesn't exist
  # proper node = "@chapters --&gt; @chapter Reports --&gt; weeknum --&gt; ds --&gt; tasktype"
  heads = ['@chapters', '@chapter Reports', weeknum, ds, tasktype]
  pos = c.createNodeHierarchy(heads)
  node.moveToLastChildOf(pos)</t>
<t tx="peckj.20131118114637.5331" lineYOffset="4b002e">@language python

&lt;&lt; docstring &gt;&gt;

&lt;&lt; declarations &gt;&gt;

@others

## main script
v_selected_week = p.v
if not is_valid_week(v_selected_week):
  g.es('not a valid week to generate a report for')
else:
  v_report_node = make_report_node(v_selected_week)
  for tasktype in valid_tasktypes:
    clone_reports_to_report_node(tasktype, v_selected_week, v_report_node)
  c.selectPosition(c.vnode2position(v_report_node))
  c.redraw_now()
</t>
<t tx="peckj.20131118114637.5332">''' Generate's the currently selected week's report
    by cloning nodes into a new report outline.
'''
</t>
<t tx="peckj.20131118114637.5333">valid_tasktypes = ['@work', '@responsibility', '@leisure']</t>
<t tx="peckj.20131118114637.5334">def is_valid_week(vnode):
  heads = ['@chapters', '@chapter Reports']
  valid_node = True
  for head in reversed(heads):
    orig_vnode = vnode
    if len(vnode.parents) == 0:
      valid_node = False
      break
    for parent in vnode.parents:
      if parent.h == head:
        vnode = parent
        break
    if orig_vnode == vnode:
      valid_node = False
      break
  return valid_node</t>
<t tx="peckj.20131118114637.5335">def make_report_node(vnode):
  pos = c.vnode2position(vnode)
  pos = pos.insertAsLastChild()
  pos.h = 'Week Report'
  return pos.v</t>
<t tx="peckj.20131118114637.5336">def clone_reports_to_report_node(tasktype, v_sel_week, v_report_node):
  tasktype = tasktype[1:].title()
  v_target = v_report_node.insertAsLastChild()
  v_target.h = tasktype
  fromlist = []
  for child in v_sel_week.children:
    if child.h == 'Week Report':
      continue
    for category in child.children:
      if category.h == tasktype:
        fromlist.append(category)
  for node in fromlist:
    for child in node.children:
      clone = c.vnode2position(child).clone()
      clone.moveToLastChildOf(c.vnode2position(v_target))
</t>
<t tx="peckj.20131118114637.5364"></t>
<t tx="peckj.20131118114637.5380">@language python

''' all the @nodewatch defs for LTD:
    LTD: 00 Past Due -&gt; all incomplete tasks &lt; today
    LTD: 01 Due Today -&gt; all incomplete tasks = today
    LTD: 02 Due Tomorrow -&gt; all incomplete tasks = tomorrow
    LTD: 03 Due This Week -&gt; all incomplete tasks &lt;= today + 1 week
'''

&lt;&lt; imports &gt;&gt;
&lt;&lt; declarations &gt;&gt;
@others

main()
</t>
<t tx="peckj.20131118114637.5381">import datetime
import operator
from dateutil.relativedelta import relativedelta</t>
<t tx="peckj.20131118114637.5382">today = datetime.date.today()

defs = {
  'LTD: 00 Past Due': (today, operator.lt),
  'LTD: 01 Due Today': (today, operator.eq),
  'LTD: 02 Due Tomorrow': (today + relativedelta(days=1), operator.eq),
  'LTD: 03 Due This Week': (today + relativedelta(days=7), operator.le)
}</t>
<t tx="peckj.20131118114637.5383">## workhorse
def get_tasks_by_date(date, comparator=operator.lt):
  n = []
  for v in c.all_unique_nodes():
    duedate = c.cleo.getat(v, 'duedate')
    nextworkdate = c.cleo.getat(v, 'nextworkdate')
    priority = c.cleo.getat(v, 'priority')
    if priority: priority = int(priority)
    if (((duedate and comparator(duedate,date)) or
        (nextworkdate and comparator(nextworkdate,date)))
        and priority != 100):
      n.append(v)
  return n</t>
<t tx="peckj.20131118114637.5384">def main():
  for category,constraints in defs.items():
    date,op = constraints
    tasks = get_tasks_by_date(date, comparator=op)
    c.theNodewatchController.add(category, tasks)</t>
<t tx="peckj.20131118114637.5387"></t>
<t tx="peckj.20131118114637.5388">mark-task-done Mark task done
open-child-urls Open child URLs
</t>
<t tx="peckj.20131118114637.5389"></t>
<t tx="peckj.20131118114637.5390"></t>
<t tx="peckj.20131118114637.5391"></t>
<t tx="peckj.20131118114637.5392"></t>
<t tx="peckj.20131118114637.5393"></t>
<t tx="peckj.20131118114637.5394"></t>
<t tx="peckj.20131118114637.5395"></t>
<t tx="peckj.20131118114637.5396"></t>
<t tx="peckj.20131118114637.5397"></t>
<t tx="peckj.20131118114637.5399"></t>
<t tx="peckj.20131118114637.5400"></t>
<t tx="peckj.20131118114637.5401"></t>
<t tx="peckj.20131118114637.5402"></t>
<t tx="peckj.20131118114637.5404"></t>
<t tx="peckj.20131118114637.5406"></t>
<t tx="peckj.20131118114637.5407"></t>
<t tx="peckj.20131118114637.5408"></t>
<t tx="peckj.20131118114637.5409"></t>
<t tx="peckj.20131118114637.5410"></t>
<t tx="peckj.20131118114637.5859">@killcolor 

True: create minibuffer commands for each @rclick node.
Default False.</t>
<t tx="peckj.20131118114637.5861">@
Default False

If True, all @settings-&gt;@nodewatch nodes in the current outline are executed when the outline loads.

@c</t>
</tnodes>
</leo_file>
