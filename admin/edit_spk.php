<?php
	$id_spk=$_GET['cus'];
    include 'php/top.php';
    include 'php/header.php';
    include 'php/left-sidebar.php'; include 'php/breadcrumbs.php';
    ?>
    <!-- Page Content -->
    <div id="page-wrapper">
        <div class="container-fluid">
            <div class="row bg-title">
                <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                    <h4 class="page-title">Edit Data SPK</h4> </div>
                <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
                    <?php echo breadcrumbs(); ?>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- .row -->
            <div class="row">
                <div class="col-sm-12">
                    <div class="white-box p-l-20 p-r-20">
                        <h3 class="box-title m-b-0"><a href="spk.php?spk=<?=$id_spk?>" class="btn btn-alt btn-sm btn-default toggle-bordered enable-tooltip" title="Kembali">Kembali</a></h3>
                        <h2><strong>Edit Data</strong> SPK</h2>
						<br>
                        <div class="row">
                            <div class="col-md-12">
							  <?php
							  $id=$_GET['id'];
							  $det=mysql_query("select * from spk where id='$id'")or die(mysql_error());
							  while($d=mysql_fetch_array($det)){
							  ?>
                                <form action="tmb_spk_act.php" method="post" class="floating-labels ">
                                    <div class="form-group m-b-40">
                                        <input name="no_spk" type="text" class="form-control" id="input1" value="<?=$d['no_spk'] ?>" required><span class="highlight"></span> <span class="bar"></span>
                                        <label for="no_spk">No SPK</label>
                                    </div>
                                    <div class="form-group m-b-40">
                                        <input name="no_proposal" type="text" class="form-control" id="no_proposal" value="<?=$d['no_proposal'] ?>" required><span class="highlight"></span> <span class="bar"></span>
                                        <label for="no_proposal">No Proposal</label>
                                    </div>
									<div class="form-group m-b-40">
										<input name="tgl_spk_terbit" type="text" class="form-control mydatepicker" id="tgl_spk_terbit" value="<?=$d['tgl_spk_terbit'] ?>" required><span class="highlight"></span> <span class="bar"></span>
										<label for="tgl_spk_terbit">Tanggal SPK Terbit</label>
									</div>
									<div class="form-group m-b-40">
										<input name="tgl_spk_berakhir" type="text" class="form-control mydatepicker" id="tgl_spk_berakhir" value="<?=$d['tgl_spk_berakhir'] ?>" required><span class="highlight"></span> <span class="bar"></span>
										<label for="tgl_spk_berakhir">Tanggal SPK Berakhir</label>
									</div>
                                    <div class="form-group m-b-40">
                                        <input name="asal" type="text" class="form-control" id="asal" value="<?=$d['asal'] ?>" required><span class="highlight"></span> <span class="bar"></span>
                                        <label for="asal">Asal</label>
                                    </div>
                                    <div class="form-group m-b-40">
                                        <input name="tujuan" type="text" class="form-control" id="tujuan" value="<?=$d['tujuan'] ?>" required><span class="highlight"></span> <span class="bar"></span>
                                        <label for="tujuan">Tujuan</label>
                                    </div>
                                    <div class="form-group m-b-40">
                                        <input name="jumlah_rit" type="text" class="form-control" id="jumlah_rit" value="<?=$d['jumlah_rit'] ?>" required><span class="highlight"></span> <span class="bar"></span>
                                        <label for="jumlah_rit">Jumlah Rit</label>
                                    </div>
                                    <div class="form-group m-b-40">
                                        <input name="biaya_rit" type="text" class="form-control" id="biaya_rit" value="<?=$d['biaya_rit'] ?>" required><span class="highlight"></span> <span class="bar"></span>
                                        <label for="biaya_rit">Biaya Rit</label>
                                    </div>
                                    <div class="form-group m-b-40">
                                        <input name="harga_rit" type="text" class="form-control" id="harga_rit" value="<?=$d['harga_rit'] ?>" required><span class="highlight"></span> <span class="bar"></span>
                                        <label for="harga_rit">Harga perRit</label>
                                    </div>

									<input name="cus" type="hidden" value="<?=$id_spk?>">
									<input name="id" type="hidden" value="<?=$id?>">
									<div class="form-group form-actions">
										<div class="col-md-9 col-md-offset-3">
											<button name="submit" type="submit" class="btn btn-sm btn-primary" value="Update"><i class="fa fa-angle-right"></i> Update</button>
											<button type="reset" class="btn btn-sm btn-warning"><i class="fa fa-repeat"></i> Reset</button>
										</div>
									</div>
                                </form>
							  <?php
							  }
							  ?>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /.row -->
            <?php include 'php/right-sidebar.php';?>
        </div>
        <!-- /.container-fluid -->
        <?php include 'php/footer.php';?>

    <!-- Sweet-Alert  -->
    <script src="../plugins/bower_components/sweetalert/sweetalert.min.js"></script>
    <script src="../plugins/bower_components/sweetalert/jquery.sweet-alert.custom.js"></script>
    <!-- Date range Plugin JavaScript -->
    <script src="../plugins/bower_components/timepicker/bootstrap-timepicker.min.js"></script>
    <script src="../plugins/bower_components/bootstrap-daterangepicker/daterangepicker.js"></script>
    <script>
        // Date Picker
        jQuery('#datepicker-autoclose').datepicker({
            autoclose: true
            , todayHighlight: true
        });
        jQuery('#date-range').datepicker({
            toggleActive: true
        });
        jQuery('#datepicker-inline').datepicker({
            todayHighlight: true
        });
        // Daterange picker
        $('.input-daterange-datepicker').daterangepicker({
            buttonClasses: ['btn', 'btn-sm']
            , applyClass: 'btn-danger'
            , cancelClass: 'btn-inverse'
        });
        $('.input-daterange-timepicker').daterangepicker({
            timePicker: true
            , format: 'MM/DD/YYYY h:mm A'
            , timePickerIncrement: 30
            , timePicker12Hour: true
            , timePickerSeconds: false
            , buttonClasses: ['btn', 'btn-sm']
            , applyClass: 'btn-danger'
            , cancelClass: 'btn-inverse'
        });
        $('.input-limit-datepicker').daterangepicker({
            format: 'MM/DD/YYYY'
            , minDate: '06/01/2015'
            , maxDate: '06/30/2015'
            , buttonClasses: ['btn', 'btn-sm']
            , applyClass: 'btn-danger'
            , cancelClass: 'btn-inverse'
            , dateLimit: {
                days: 6
            }
        });
    </script>
    <!--Style Switcher -->
    <script src="../plugins/bower_components/styleswitcher/jQuery.style.switcher.js"></script>
    <!--Style Switcher -->
<script src="../plugins/bower_components/styleswitcher/jQuery.style.switcher.js"></script>
</body>

</html>
