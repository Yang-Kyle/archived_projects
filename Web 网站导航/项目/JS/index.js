    var NowFrame = 1;
	var MaxFrame = 2;
	function show(d1) {
		if(Number(d1)){
			clearInterval(theTimer);
			NowFrame=d1;
		}
		for(var i=1;i<(MaxFrame+1);i++){
			if(i==NowFrame)
				{document.getElementById('pic'+NowFrame).style.display ='block'; 
document.getElementById("num"+NowFrame).style.backgroundColor="#F63";
			}
			else{
				document.getElementById('pic'+i).style.display ='none';
				document.getElementById("num"+i).style.backgroundColor="#CCC";
			}	
		}
		{ if(NowFrame == MaxFrame)
			NowFrame = 1;
		  else
		    NowFrame++;
		}
	}
    function showOut()
    {
    	theTimer=setInterval('show()',3000);
    }
  	 theTimer=setInterval('show()', 3000);
	 var count=0; 
	 var mytime; 
	 function showImg(id){
	 	count++;
	 	if(id>0){
	 		clearInterval(mytime); 
	 		count=id;       
	 		} 
	 	if(count>2){
	 		count=1;
	 		}
	 	document.getElementById("pic").src="img/ad_"+count+".jpg";
	 	for(var i=1;i<=2;i++){
	 		if(i==count){
	 			document.getElementById("num"+i).style.backgroundColor="#F63";
	 			}
	 		else{
	 			document.getElementById("num"+i).style.backgroundColor="#CCC";
	 			}
	 		}
	 }
	 function showOut(){mytime=setInterval("showImg(0)",3000);}
	 mytime=setInterval("showImg(0)",3000);