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
                        <div class="col2" style="padding:5px;">
                            <span class="label label-default">
                                <i class="icon-bell"></i>Default</span>
                            <span class="label label-success">
                                <i class="icon-bell"></i>Success</span>
                            <span class="label label-info">
                                <i class="icon-bell"></i>Info</span>
                            <span class="label label-warning">
                                <i class="icon-bell"></i>Warning</span>
                            <span class="label label-important">
                                <i class="icon-bell"></i>Important</span>
                        </div>
                    </div>
                    <div class="widget-body">
                        <div id='external-events'>                                                            
                            <div class='external-events-new post-comment'>
                                <div style="height: 35px;">
                                    <h4>Draggable Events</h4>
                                    <p>
                                        <input type='checkbox' id='drop-remove' />Remove after drop
                                    </p>
                                </div>
                                <label>Title<span class="color-red">*</span></label>
                                <input type="text" class="span12" id="event_title">
                                <label>Link Url</label>
                                <input type="text" class="span12" id="event_url">
                                <label>Category<span class="color-red">*</span></label>
                                <select data-placeholder="category" class="span12" id='event_priority'>
                                    <option value="default">Default</option>
                                    <option value="success">Success</option>
                                    <option value="info">Info</option>
                                    <option value="warning">Warning</option>
                                    <option value="important">Important</option>
                                </select>
                                <button type="button" class="btn btn-info" id="event_add">New</button>                               
                            </div>
                            <div class='external-events-task'>
                                <!--<div class='external-event label label-success' data-class='label label-success'>Demo Event 1</div>-->
                            </div>                           
                        </div>
                        <input type="hidden" id="hidden_calendar_events" value="{{.calendar_events}}"/>
                        <div id="calendar" class="has-toolbar"></div>
                    </div>
                </div>
                <!-- END CALENDAR PORTLET-->
            </div>
        </div>
    </div>
    <!-- END PAGE CONTENT-->
</div>
<!-- END PAGE CONTAINER-->