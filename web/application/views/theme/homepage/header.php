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
                <a class="navbar-brand" href="<?=site_url('home');?>">Gautam Buddha University</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li class="hidden">
                        <a href="#page-top"></a>
                    </li>
                    <li class="page-scroll">
                        <a href="<?=site_url('student/signin');?>">Student</a>
                    </li>
					<li class="page-scroll">
                        <a href="<?=site_url('faculty/signin');?>">Faculty</a>
                    </li>
                    <li class="page-scroll">
                        <a href="<?=site_url('admin/signin');?>">Admin</a>
                    </li>
					<li class="page-scroll">
                        <a href="<?=site_url('common/app/homepage');?>">Android App</a>
                    </li>
                    <li class="page-scroll">
                        <a href="<?=site_url('common/contact/homepage');?>">Contact</a>
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
         min-height: calc(100vh - 161px);
         /* 100px header + 75px footer = 175px  */
    }
    </style>
<div class="don"><!--closes before footer-->