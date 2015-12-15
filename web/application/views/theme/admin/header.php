
    <!-- Navigation -->
    <nav class="navbar navbar-default navbar-fixed-top navbar-shrink">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="<?=site_url('home');?>">Result Viewer</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li class="hidden">
                        <a href="#page-top"></a>
                    </li>
					<li class="page-scroll">
                        <a href="<?=site_url('admin/all_faculty');?>">All-Faculty</a>
                    </li>
					<li class="page-scroll">
                        <a href="<?=site_url('admin/add_faculty');?>">Add-Faculty</a>
                    </li>
					<li class="page-scroll">
                        <a href="<?=site_url('student/details/admin');?>">Search-Student</a>
                    </li>
					<li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">More <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="<?=site_url('contact/view_messages');?>">Messages</a></li>
                            <li><a href="<?=site_url('admin/change_admin');?>">Change Admin</a></li>
                            <li><a href="#">Settings</a></li>
                        </ul>
                    </li>
					<li class="page-scroll">
                        <a href="<?=site_url('admin/logout');?>">Logout</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>
	<style>
	.don
	{
		 min-height: calc(100vh - 71px);
         /* 100px header + 75px footer = 175px  */
	}
	</style>
<div class="don">