<script>
var z,nz=0,rotZINT
function rotateZDIV()
{
z=document.getElementById("rotate3D")
clearInterval(rotZINT)
rotZINT=setInterval("startZRotate()",10)
}
function startZRotate()
{
nz=nz+1
z.style.transform="rotateZ(" + nz + "deg)"
z.style.webkitTransform="rotateZ(" + nz + "deg)"
z.style.OTransform="rotateZ(" + nz + "deg)"
z.style.MozTransform="rotateZ(" + nz + "deg)"
if (nz==360)
	{
	clearInterval(rotZINT)
	if (nz>=360){nz=0}
	}
}
</script>


	<!-- App Grid Section -->
    <section  class="success" id="app">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2>Android App</h2>
                    <hr class="star-light">
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <center>
					<br/>
                        <img src="<?=base_url('assets/images/android2.png');?>" title="Android OS" onmouseover="rotateZDIV()" id="rotate3D" class="img-responsive" alt="">
                    <br/><br/>
					</center>
					<div class="col-sm-12 text-center">
						<a href="<?=base_url('assets/rvapk/Result.apk')?>" class="btn btn-lg btn-outline">
							<i class="fa fa-download"></i> Download App
						</a>
					</div>
                </div>
            </div>
        </div>
    </section>