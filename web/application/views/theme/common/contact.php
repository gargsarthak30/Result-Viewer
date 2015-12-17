	
    <!-- Contact Section -->
    <section id="contact">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h3 style="margin-top:0px;">Contact Admin</h3>
                    <hr class="star-primary">
                </div>
            </div>
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2">
                    <!-- To configure the contact form email address, go to mail/contact_me.php and update the email address in the PHP file on line 19. -->
                    <!-- The form should work on most web servers, but if the form is not working you may need to configure your web server differently. -->
                    <form action = "<?=site_url('contact/message').'/'.$this->uri->segment(3);?>" method = "POST" name="sentMessage" id="contactForm">
                        <div class="row control-group">
                            <div class="form-group col-xs-12 floating-label-form-group controls">
                                <label>Name</label>
                                <input type="text" name = "name" class="form-control" style="height:47px;" placeholder="Name" id="name" data-validation-required-message="Please enter your name." required>
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                        <div class="row control-group">
                            <div class="form-group col-xs-12 floating-label-form-group controls">
                                <label>Email Address</label>
                                <input type="email" name = "email" class="form-control" style="height:47px;" placeholder="Email Address" id="email" required data-validation-required-message="Please enter your email address.">
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                        <div class="row control-group">
                            <div class="form-group col-xs-12 floating-label-form-group controls">
                                <label>Message</label>
                                <textarea rows="3" name = "message" class="form-control" placeholder="Message" id="message" required data-validation-required-message="Please enter a message."></textarea>
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                        <br>
                        <div id="success"></div>
                        <div class="row">
                            <div class="form-group col-xs-12">
							<center>
                                <button type="submit" class="btn btn-primary btn-lg">Send</button>
                            </center>
							</div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>

    <?php
    $msg = $this->session->flashdata('contact_message');
    if(!empty($msg))
     {
    ?>
    <script>
    alert("<?=$msg?>");
    </script>
    <?php
     }
    ?>