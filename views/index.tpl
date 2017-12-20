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

            <div class="span7">
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
                            <div class="msg-time-chat">
                                <a class="message-img" href="#">
                                    <img alt="" src="/static/img/avatar1.jpg" class="avatar">
                                </a>
                                <div class="message-body msg-in">
                                    <div class="text">
                                        <p class="attribution">
                                            <a href="#">Mosaddek Hossain</a> at 1:55pm, 13th April 2013</p>
                                        <p>Hello, How are you brother?</p>
                                    </div>
                                </div>
                            </div>
                            <!-- /comment -->

                            <!-- Comment -->
                            <div class="msg-time-chat">
                                <a class="message-img" href="#">
                                    <img alt="" src="/static/img/avatar2.jpg" class="avatar">
                                </a>
                                <div class="message-body msg-out">
                                    <div class="text">
                                        <p class="attribution">
                                            <a href="#">Dulal Khan</a> at 2:01pm, 13th April 2013</p>
                                        <p>I'm Fine, Thank you. What about you? How is going on?</p>
                                    </div>
                                </div>
                            </div>
                            <!-- /comment -->

                            <!-- Comment -->
                            <div class="msg-time-chat">
                                <a class="message-img" href="#">
                                    <img alt="" src="/static/img/avatar1.jpg" class="avatar">
                                </a>
                                <div class="message-body msg-in">
                                    <div class="text">
                                        <p class="attribution">
                                            <a href="#">Mosaddek Hossain</a> at 2:03pm, 13th April 2013</p>
                                        <p>Yeah I'm fine too. Everything is going fine here.</p>
                                    </div>
                                </div>
                            </div>
                            <!-- /comment -->

                            <!-- Comment -->
                            <div class="msg-time-chat">
                                <a class="message-img" href="#">
                                    <img alt="" src="/static/img/avatar2.jpg" class="avatar">
                                </a>
                                <div class="message-body msg-out">
                                    <div class="text">
                                        <p class="attribution">
                                            <a href="#">Dulal Khan</a> at 2:05pm, 13th April 2013</p>
                                        <p>well good to know that. anyway how much time you need to done your task?</p>
                                    </div>
                                </div>
                            </div>
                            <!-- /comment -->
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
                <!-- END CHAT PORTLET-->
            </div>
            <div class="span5">
                <!-- BEGIN NOTIFICATIONS PORTLET-->
                <div class="widget">
                    <div class="widget-title">
                        <h4>
                            <i class="icon-bell"></i> Notifications</h4>
                        <span class="tools">
                            <a href="javascript:;" class="icon-chevron-down"></a>
                            <a href="javascript:;" class="icon-remove"></a>
                        </span>
                    </div>
                    <div class="widget-body">
                        <ul class="item-list scroller padding" data-height="365" data-always-visible="1">
                            <li>
                                <span class="label label-success">
                                    <i class="icon-bell"></i>
                                </span>
                                <span>New user registered.</span>
                                <span class="small italic">Just now</span>
                            </li>
                            <li>
                                <span class="label label-success">
                                    <i class="icon-bell"></i>
                                </span>
                                <span>New order received.</span>
                                <span class="small italic">15 mins ago</span>
                            </li>
                            <li>
                                <span class="label label-warning">
                                    <i class="icon-bullhorn"></i>
                                </span>
                                <span>Alerting a user account balance.</span>
                                <span class="small italic">2 hrs ago</span>
                            </li>
                            <li>
                                <span class="label label-important">
                                    <i class="icon-bolt"></i>
                                </span>
                                <span>Alerting administrators staff.</span>
                                <span class="small italic">11 hrs ago</span>
                            </li>
                            <li>
                                <span class="label label-important">
                                    <i class="icon-bolt"></i>
                                </span>
                                <span>Messages are not sent to users.</span>
                                <span class="small italic">14 hrs ago</span>
                            </li>
                            <li>
                                <span class="label label-warning">
                                    <i class="icon-bullhorn"></i>
                                </span>
                                <span>Web server #12 failed to relosd.</span>
                                <span class="small italic">2 days ago</span>
                            </li>
                            <li>
                                <span class="label label-success">
                                    <i class="icon-bell"></i>
                                </span>
                                <span>New order received.</span>
                                <span class="small italic">15 mins ago</span>
                            </li>
                            <li>
                                <span class="label label-warning">
                                    <i class="icon-bullhorn"></i>
                                </span>
                                <span>Alerting a user account balance.</span>
                                <span class="small italic">2 hrs ago</span>
                            </li>
                            <li>
                                <span class="label label-important">
                                    <i class="icon-bolt"></i>
                                </span>
                                <span>Alerting administrators staff.</span>
                                <span class="small italic">11 hrs ago</span>
                            </li>
                            <li>
                                <span class="label label-important">
                                    <i class="icon-bolt"></i>
                                </span>
                                <span>Messages are not sent to users.</span>
                                <span class="small italic">14 hrs ago</span>
                            </li>
                            <li>
                                <span class="label label-warning">
                                    <i class="icon-bullhorn"></i>
                                </span>
                                <span>Web server #12 failed to relosd.</span>
                                <span class="small italic">2 days ago</span>
                            </li>
                            <li>
                                <span class="label label-success">
                                    <i class="icon-bell"></i>
                                </span>
                                <span>New order received.</span>
                                <span class="small italic">15 mins ago</span>
                            </li>
                            <li>
                                <span class="label label-warning">
                                    <i class="icon-bullhorn"></i>
                                </span>
                                <span>Alerting a user account balance.</span>
                                <span class="small italic">2 hrs ago</span>
                            </li>
                            <li>
                                <span class="label label-important">
                                    <i class="icon-bolt"></i>
                                </span>
                                <span>Alerting administrators support staff.</span>
                                <span class="small italic">11 hrs ago</span>
                            </li>
                            <li>
                                <span class="label label-important">
                                    <i class="icon-bolt"></i>
                                </span>
                                <span>Messages are not sent to users.</span>
                                <span class="small italic">14 hrs ago</span>
                            </li>
                            <li>
                                <span class="label label-warning">
                                    <i class="icon-bullhorn"></i>
                                </span>
                                <span>Web server #12 failed to relosd.</span>
                                <span class="small italic">2 days ago</span>
                            </li>
                        </ul>
                        <div class="space5"></div>
                        <a href="#" class="pull-right">View all notifications</a>
                        <div class="clearfix no-top-space no-bottom-space"></div>
                    </div>
                </div>
                <!-- END NOTIFICATIONS PORTLET-->
            </div>
        </div>

        <div class="row-fluid">
            <div class="span8 responsive" data-tablet="span8 fix-margin" data-desktop="span8">
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
            <div class="span4 responsive" data-tablet="span4 fix-margin" data-desktop="span4">
                <!-- BEGIN TODO_LIST PORTLET-->
                <div class="widget">
                    <div class="widget-title">
                        <h4>
                            <i class="icon-check"></i> To Do List</h4>
                        <span class="tools">
                            <a href="javascript:;" class="icon-chevron-down"></a>
                            <a href="javascript:;" class="icon-remove"></a>
                        </span>
                    </div>
                    <div class="widget-body">
                        <ul class="todo-list">
                            <li>
                                <div class="col1">
                                    <div class="cont">
                                        <a href=""> Weekly Meeting.</a>
                                    </div>
                                </div>
                                <div class="col2">
                                    <span class="label label-success">
                                        <i class="icon-bell"></i>Today</span>
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
                            <li>
                                <div class="col1">
                                    <div class="cont">
                                        <a href="">Monthly Status Update.</a>
                                    </div>
                                </div>
                                <div class="col2">
                                    <span class="label label-default">
                                        <i class="icon-bell"></i>12.00PM</span>
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
                            <li>
                                <div class="col1">
                                    <div class="cont">
                                        <a href="">Upgrage server OS.</a>
                                    </div>
                                </div>
                                <div class="col2">
                                    <span class="label label-success">
                                        <i class="icon-bell"></i>4 March</span>
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
                            <li>
                                <div class="col1">
                                    <div class="cont">
                                        <a href="">Weekly technical support report.</a>
                                    </div>
                                </div>
                                <div class="col2">
                                    <span class="label label-success">
                                        <i class="icon-bell"></i>2 Jan</span>
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
                            <li>
                                <div class="col1">
                                    <div class="cont">
                                        <a href=""> Project materials.</a>
                                    </div>
                                </div>
                                <div class="col2">
                                    <span class="label label-warning">
                                        <i class="icon-bell"></i>09 Feb</span>
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
                            <li>
                                <div class="col1">
                                    <div class="cont">
                                        <a href="">Project Status Update.</a>
                                    </div>
                                </div>
                                <div class="col2">
                                    <span class="label label-important">
                                        <i class="icon-bell"></i>4.30PM</span>
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
                            <li>
                                <div class="col1">
                                    <div class="cont">
                                        <a href=""> Anual Project Meeting.</a>
                                    </div>
                                </div>
                                <div class="col2">
                                    <span class="label label-important">
                                        <i class="icon-bell"></i>Today</span>
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
                            <li>
                                <div class="col1">
                                    <div class="cont">
                                        <a href="">Prepare project materials.</a>
                                    </div>
                                </div>
                                <div class="col2">
                                    <span class="label label-warning">
                                        <i class="icon-bell"></i>3 May</span>
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
                            <li>
                                <div class="col1">
                                    <div class="cont">
                                        <a href="">Update salary status.</a>
                                    </div>
                                </div>
                                <div class="col2">
                                    <span class="label label-reverse">
                                        <i class="icon-bell"></i>1 June</span>
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
                            <li>
                                <div class="col1">
                                    <div class="cont">
                                        <a href="">Update Task Status.</a>
                                    </div>
                                </div>
                                <div class="col2">
                                    <span class="label label-reverse">
                                        <i class="icon-bell"></i>3 April</span>
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
                            <li>
                                <div class="col1">
                                    <div class="cont">
                                        <a href="">Project Status Report.</a>
                                    </div>
                                </div>
                                <div class="col2">
                                    <span class="label label-important">
                                        <i class="icon-bell"></i>10.00PM</span>
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
                            <li>
                                <div class="col1">
                                    <div class="cont">
                                        <a href="">Update project rates.</a>
                                    </div>
                                </div>
                                <div class="col2">
                                    <span class="label label-reverse">
                                        <i class="icon-bell"></i>28 April</span>
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