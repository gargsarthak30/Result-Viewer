<?php
$fac_username = $this->session->userdata('user_name');
$fac_id_q = $this->db->query("SELECT Faculty_Id FROM faculty WHERE Username = '$fac_username';");
$fac_id = $fac_id_q->row()->Faculty_Id;
?>

<style>
.cr
{
    text-align:center;
}
</style>

<section id="new">
    <br/>
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h3 style="margin-top:-20px;">Existing Sheets</h3>
                    <hr class="star-primary">
                </div>
            </div>
            <br/>

    <?php
        $select_all = $this->db->query("SELECT * FROM excel_details WHERE Faculty_Id = '$fac_id' ORDER BY Sheet_Id DESC;");
        if ($select_all->num_rows() > 0)
         {
    ?>
        <ul class="nav nav-list col-sm-12" id = "record_list"> 
            <b>
                <li class="list-group-item">
                    <div class="row">
                        <div class="col-md-1 cr">
                            S.No.
                        </div>
                        <div class="col-md-1 cr">
                            Sheet Id
                        </div>
                        <div class="col-sm-2 cr">
                           School
                        </div>
                        <div class="col-sm-2 cr">
                           Department
                        </div>
                        <div class="col-sm-1 cr">
                           Semester
                        </div>
                        <div class="col-sm-2 cr">
                           Subject Code
                        </div>
                        <div class="col-sm-3 cr">
                           Action
                        </div>
                    </div>
                </li>
            </b>
            <?php
            $count=0;
            foreach ($select_all->result() as $row)
             {
                $count++;
                if($count%2==0)
                {
                    $color='default';
                }
                else
                {
                    $color='primary';
                }
                if($row->Published == 0)
                {
                    $shade ='danger';
                    $disable = '';
                }
                else
                {
                    $shade ='success';
                    $disable = 'disabled';
                }
                ?>
                <li class="list-group-item list-group-item-<?=$color?>">
                    <div class="row">
                        <div class="col-md-1 cr">
                            <?=$count;?>
                        </div>
                        <div class="col-md-1 cr">
                            <?= $row->Sheet_Id?>
                        </div>
                        <div class="col-sm-2 cr">
                           <?= $row->College_Id?>
                        </div>
                        <div class="col-sm-2 cr">
                           <?= $row->Department?>
                        </div>
                        <div class="col-sm-1 cr">
                           <?= $row->Semester?>
                        </div>
                        <div class="col-sm-2 cr">
                           <?= $row->Course_Code?>
                        </div>
                        <div class="col-sm-3 cr">
                                <!--form action ="<?=site_url('excel/delete');?>" method="POST">
                                <?php 
                                    /*
                                    $this->load->helper('form');
                                    echo form_hidden('sid', $row->Sheet_Id);
                                    echo form_hidden('fid', $fac_id);
                                    */
                                ?>
                                <input type="submit" class="btn btn-xs btn-danger" value="Delete">&nbsp;&nbsp;&nbsp;
                                </form-->
                           <a href="<?= site_url('excel/view'); ?>" style="width:60px;" class="btn btn-xs btn-primary">View</a>&nbsp;&nbsp;&nbsp;
                           <a href="<?= site_url('excel/publish').'/'.$row->Sheet_Id.'/'.$row->College_Id; ?>" style="width:60px;" class="btn btn-xs btn-<?=$shade?> <?=$disable?>" >Publish</a>
                        </div>
                            
                    </div>
                </li>

                <?php
            }
            ?>
        </ul>
        <?php
    }
    else 
    {
        echo "<b>Nothing to Display, no Sheets Found</b>";
    }
    ?>
</div>
</section>
<?php
$flash = $this->session->flashdata('sheet_delete').$this->session->flashdata('published');
if(!empty($flash))
{
?>
<script>
var m = '<?=$flash;?>';
alert(m);
</script>
<?php
}
?>
