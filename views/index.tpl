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
                <a class="icon-btn span2" href="#">
                    <i class="icon-group"></i>
                    <div>Users</div>
                    <span class="badge badge-important">2</span>
                </a>
                <a class="icon-btn span2" href="#">
                    <i class="icon-calendar"></i>
                    <div>Calendar</div>
                </a>
                <a class="icon-btn span2" href="#">
                    <i class="icon-sitemap"></i>
                    <div>Categories</div>
                </a>
                <a class="icon-btn span2" href="#">
                    <i class="icon-tasks"></i>
                    <div>Task</div>
                    <span class="badge badge-important">3</span>
                </a>
                <a class="icon-btn span2" href="#">
                    <i class="icon-plane"></i>
                    <div>Projects</div>
                    <span class="badge badge-info">21</span>
                </a>
                <a class="icon-btn span2" href="#">
                    <i class="icon-thumbs-up"></i>
                    <div>Feedback</div>
                    <span class="badge badge-info">2</span>
                </a>
            </div>
        </div>
        <!-- END SQUARE STATISTIC BLOCKS-->

        <div class="row-fluid">
            <!-- BEGIN CHAT PORTLET-->
            <div class="widget" id="chats">
                <div class="widget-title">
                    <h4>
                        <i class="icon-comments-alt"></i> Chats</h4>
                    <span class="tools">
                        <a href="javascript:;" class="icon-chevron-down"></a>
                        <a href="javascript:;" class="icon-remove"></a>
                    </span>
                </div>
                <div class="widget-body">
                    <div class="timeline-messages">
                        <!-- Comment -->
                        {{range $k,$v:= .chat_msgs}}
                        <div class="msg-time-chat">
                            <a class="message-img" href="#">
                                <img alt="" src="/static/img/avatar1.jpg" class="avatar">
                            </a>                           
                            <div class="message-body msg-in">
                                <div class="text">
                                    <p class="attribution">
                                        <a href="#">{{$v.Name}}</a> at {{$v.Date}}</p>
                                    <p>{{$v.Msg}}</p>
                                </div>
                                <div class="chat-form">
                                    <div class="input-cont">
                                        <input type="text" placeholder="Type a message here..." />
                                    </div>
                                    <div class="btn-cont">
                                        <a href="javascript:;" class="btn btn-primary">Send</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        {{end}}
                        <!-- /comment -->
                    </div>
                </div>
            </div>
            <!-- END CHAT PORTLET-->
        </div>

        <div class="row-fluid">
            <div class="span12 responsive" data-tablet="span12 fix-margin" data-desktop="span12">
                <!-- BEGIN CALENDAR PORTLET-->
                <div class="widget">
                    <div class="widget-title">
                        <h4>
                            <i class="icon-calendar"></i> Calendar</h4>
                        <span class="tools">
                            <a href="javascript:;" class="icon-chevron-down"></a>
                            <a href="javascript:;" class="icon-remove"></a>
                        </span>
                    </div>
                    <div class="widget-body">
                        <div id="calendar" class="has-toolbar"></div>
                    </div>
                </div>
                <!-- END CALENDAR PORTLET-->
            </div>
        </div>
        <div class="row-fluid">
            <div class="span12 responsive" data-tablet="span12 fix-margin" data-desktop="span12">
                <!-- BEGIN TODO_LIST PORTLET-->
                <div class="widget">
                    <div class="widget-title">
                        <h4>
                            <i class="icon-check"></i> To Do List</h4>
                        <div class="col2">
                            <span class="label label-default">
                                <i class="icon-bell"></i>Default</span>
                            <span class="label label-success">
                                <i class="icon-bell"></i>Success</span>
                            <span class="label label-warning">
                                <i class="icon-bell"></i>Warning</span>
                            <span class="label label-important">
                                <i class="icon-bell"></i>Important</span>                  
                            <span class="tools">
                                <a href="javascript:;" class="icon-chevron-down"></a>
                                <a href="javascript:;" class="icon-remove"></a>
                            </span>
                        </div>
                    </div>
                    <div class="widget-body">
                        <ul class="todo-list">
                            {{range $k,$v:= .todo_msgs}}
                            <li>
                                <div class="col1">
                                    <div class="cont">
                                        <a href=""> {{$v.Msg}}</a>
                                    </div>
                                </div>
                                <div class="col2">
                                    <span class="label label-{{$v.Type}}">
                                        <i class="icon-bell"></i>{{$v.Date}}</span>
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