<!-- BEGIN PAGE CONTAINER-->
<div class="container-fluid">
    <!-- BEGIN PAGE HEADER-->
    <div class="row-fluid">
        <div class="span12">
            <!-- BEGIN PAGE TITLE & BREADCRUMB-->
            <h3 class="page-title">
                Dashboard
                <small> General Information </small>
            </h3>
            <ul class="breadcrumb">
                <li>
                    <a href="/">
                        <i class="icon-home"></i>
                    </a>
                    <span class="divider">&nbsp;</span>
                </li>
                <li>
                    <a href="/">Dashboard</a>
                    <span class="divider">&nbsp;</span>
                </li>
                <li>
                    <a href="/">Dashboard</a>
                    <span class="divider-last">&nbsp;</span>
                </li>
                <li class="pull-right search-wrap">
                    <form class="hidden-phone">
                        <div class="search-input-area">
                            <input id=" " class="search-query" type="text" placeholder="Search">
                            <i class="icon-search"></i>
                        </div>
                    </form>
                </li>
            </ul>
            <!-- END PAGE TITLE & BREADCRUMB-->
        </div>
    </div>
    <!-- END PAGE HEADER-->
    <!-- BEGIN PAGE CONTENT-->
    <div id="page" class="dashboard">
        <!-- BEGIN SQUARE STATISTIC BLOCKS-->
        <div class="square-state">
            <div class="row-fluid">
                <a class="icon-btn span2" id="alink_calendar" href="#">
                    <i class="icon-calendar"></i>
                    <div>Calendar today</div>
                    <span class="badge badge-important">2</span>
                </a>
                <a class="icon-btn span2" id="alink_todolist" href="#">
                    <i class="icon-tasks"></i>
                    <div>To Do List today</div>
                    <span class="badge badge-important">4</span>
                </a>                
            </div>
        </div>
        <!-- END SQUARE STATISTIC BLOCKS-->

        <div class="row-fluid">
            <div class="span12 responsive" data-tablet="span12 fix-margin" data-desktop="span12">
                <!-- BEGIN CALENDAR PORTLET-->
                <div class="widget" id="widget_calendar">
                    <div class="widget-title">
                        <h4>
                            <i class="icon-calendar"></i> Calendar</h4>
                            <div class="col2">
                                <span class="label label-default">
                                    <i class="icon-bell"></i>Default</span>
                                <span class="label label-success">
                                    <i class="icon-bell"></i>Success</span>
                                <span class="label label-warning">
                                    <i class="icon-bell"></i>Warning</span>
                                <span class="label label-important">
                                    <i class="icon-bell"></i>Important</span>
                            </div>
                    </div>
                    <div class="widget-body">
                        <div id='external-events'>
                            <div>
                                <h4>Draggable Events</h4>
                                <p>
                                    <input type='checkbox' id='drop-remove' />Remove after drop
                                </p>
                            </div>
                            <!--<div class='external-event label label-success' data-class='label label-success'>Demo Event 1</div>-->
                        </div>
                        <div id="calendar" class="has-toolbar"></div>
                    </div>
                </div>
                <!-- END CALENDAR PORTLET-->
            </div>
        </div>
        <div class="row-fluid">
            <div class="span12 responsive" data-tablet="span12 fix-margin" data-desktop="span12">
                <!-- BEGIN TODO_LIST PORTLET-->
                <div class="widget" id="widget_todolist">
                    <div class="widget-title">
                        <h4>
                            <i class="icon-tasks"></i> To Do List</h4>
                        <div class="col2">
                            <span class="label label-default">
                                <i class="icon-bell"></i>Default</span>
                            <span class="label label-success">
                                <i class="icon-bell"></i>Success</span>
                            <span class="label label-warning">
                                <i class="icon-bell"></i>Warning</span>
                            <span class="label label-important">
                                <i class="icon-bell"></i>Important</span>
                        </div>
                    </div>
                    <div class="widget-body">
                        <ul class="todo-list scroller" data-height="365" data-always-visible="1">
                            {{range $k,$v:= .todo_msgs}}
                            <li>
                                <div class="col1">
                                    <div class="cont">
                                        <a href=""> {{$v.Msg}}</a>
                                    </div>
                                </div>
                                <div class="col1">
                                    <div style="width:70%;margin-left:10px;">
                                        <input class="slider" type="slider" value="{{$v.Progress}}" />
                                    </div>
                                </div>
                                <div class="col2">
                                    <span class="label label-{{$v.Type}}">
                                        <i class="icon-bell {{$v.Pulsate}}"></i>{{$v.Date}}</span>
                                    <span class="actions">
                                        <a href="#" class="icon">
                                            <i class="icon-ok"></i>
                                        </a>
                                        <a href="#" class="icon">
                                            <i class="icon-remove"></i>
                                        </a>
                                    </span>
                                </div>
                            </li>
                            {{end}}                   
                        </ul>
                        <a href="#" class="pull-right">View all todo list</a>
                        <div class="clearfix"></div>
                    </div>
                </div>
                <!-- END TODO_LIST PORTLET-->
            </div>
        </div>
    </div>
    <!-- END PAGE CONTENT-->
</div>
<!-- END PAGE CONTAINER-->