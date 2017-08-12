$(document).ready(function(){
        
            container = $('.container');
        	cover = $('.cover');
        	play = $('.playButton');
        	pause = $('.pauseButton');
        	close = $('.close');
        	song = new Audio("http://d2cmk1i3pr55ur.cloudfront.net/song.mp3");
        	duration = song.duration;
        	like = $('.likeButton')
        	liked = $('.likedButton')
        	
        	
        	pause.hide();
        	liked.hide();
        	
        	play.on('click', function(e){
        	   
        	    song.play();
        	    play.hide();
        	    pause.show();
        	  
            });
            
            pause.on('click', function(e){
                
                song.pause();
               pause.hide();
               play.show();
            });
            
            like.on('click', function(e){
        	    like.hide();
        	    liked.show();
            });
            
            liked.on('click', function(e){
                liked.hide();
                like.show();
            });
            
            duration = $('.fullDuration');
            currentTime = $('.currentTime');
           
            
            var barSize = 500;
            var bar = $('.defaultBar');
            var progressBar = $('.progressBar')
            var progressCircle = $('.progressCircle')
            
            
            
            //Time/Duration
    
        	$(song).on('timeupdate',function(){
        		//Get hours and minutes
        		var s = parseInt(song.currentTime % 60);
        		var m = parseInt(song.currentTime / 60) % 60;
        		var min = parseInt(song.duration / 60);
                var sce = parseInt(song.duration % 60);
                duration.html(min + ':' + sce);
            
                if(!song.ended){
            		if(s < 10){
            			s = '0'+s;
            		}
            		currentTime.html(m + ':'+ s);
            		
            		var value = 0;
            		if(song.currentTime > 0){
            			value = Math.floor((100 / song.duration) * song.currentTime);
            		}
            		
            		
            		var size = parseInt(song.currentTime*barSize/song.duration);
            
            		
            	    progressBar.css('width',size+'px');
            	    progressCircle.animate({left:(size-1)+'px' ,}, 5);
                }
                else{
                    currentTime.html("0:00");
                    playButton.css("backgroundImage" ,'background-image:url(/assets/play.png)');
                
                    progressBar.css( "width" , "0px");
                }
        		
        	});
        	
        	
        	bar.click( function( event ) {
        	        
                    var mouseX =  event.pageX - bar.offset().left;
                    var newtime = Math.floor(mouseX*song.duration/barSize);
                    
                    song.currentTime = newtime;
                   
            });
        
});

