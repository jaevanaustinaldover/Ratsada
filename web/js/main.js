<!--
// PRELOADING IMAGES
if (document.images) {
 img1_on =new Image(); img1_on.src ="images/logo1a.png"; 
 img1_off=new Image(); img1_off.src="images/logo1.png"; 

 img2_on =new Image(); img2_on.src ="images/logo2a.png"; 
 img2_off=new Image(); img2_off.src="images/logo2.png"; 

 img3_on =new Image(); img3_on.src ="images/logo3a.png"; 
 img3_off=new Image(); img3_off.src="images/logo3.png"; 

 img4_on =new Image(); img4_on.src ="images/logo4a.png"; 
 img4_off=new Image(); img4_off.src="images/logo4.png"; 

 img5_on =new Image(); img5_on.src ="images/logo5a.png"; 
 img5_off=new Image(); img5_off.src="images/logo5.png"; 

 img6_on =new Image(); img6_on.src ="images/logo6a.png"; 
 img6_off=new Image(); img6_off.src="images/logo6.png"; 
}

function movr(k) {
 if (document.images) 
  eval('document.img'+k+'.src=img'+k+'_on.src');
}

function mout(k) {
 if (document.images) 
  eval('document.img'+k+'.src=img'+k+'_off.src');
}

function handleOver() {
 if (document.images) 
  document.imgName.src=img_on.src;
}

function handleOut() {
 if (document.images) 
  document.imgName.src=img_off.src;
}