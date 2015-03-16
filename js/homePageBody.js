$(document).ready(function() {   
	                     
        $.getJSON('upload.do', function(responseJson) {    
            
        	console.log("inGet" + JSON.stringify(responseJson));
        	
        		$.each(responseJson, function(index, item) { // Iterate over the JSON array.
        		$('<li>').text(item.name + " " + " " + index).appendTo($ul);
        		
        		var $ul = $('<ul>').appendTo($('#somediv')); 
                
                //append each item to carousel
                var carousel = $("#carousel");
                
                //outer item div
                var outerFirstItemDiv = $("<div class='active item'>");
                var outerItemDiv = $("<div class='item'>");
                
                //div holds image tags append to outerItemDiv
                var imageDiv= $("<div id='imageDiv'>");
                
                //hold image sets href, append to image div
                var sendToPage = $("<a class='thumbnail'>");
                
                //image, append to sendToPage
                var img = $("<img style='width:200px;height:200px;'>");
                
                //caption outerDiv append to outerItemDiv
                var carouselCaption = $("<div class='carousel-caption' style='margin-top:100px;'>");
                
                //caption name tag, append to carouselCaption
                var caption = $("<h3>");
                
                //caption price, append to carouselCaption
                var captionPrice = $("<p>");
        		
        		if(index == 0) {
        			
        			outerFirstItemDiv.appendTo($("#carousel"));
        			imageDiv.appendTo(outerFirstItemDiv);
        			sendToPage.appendTo(imageDiv);
        			img.attr('src', item.image).appendTo(sendToPage);
        			img.attr('alt', item.description).appendTo(sendToPage);
        			sendToPage.attr('href', "/ShoppingCart/action.do?action=productcategory&category=" + item.category).appendTo(sendToPage);
        			carouselCaption.appendTo(outerFirstItemDiv);
        			caption.text(item.brand + " " + item.name).appendTo(carouselCaption);
        			captionPrice.text("$" + item.price).appendTo(caption);
        			
                } else {
                	
                	outerItemDiv.appendTo($("#carousel"));
                	imageDiv.appendTo(outerItemDiv);
                	sendToPage.appendTo(imageDiv);
                	img.attr('src', item.image).appendTo(sendToPage);
                	img.attr('alt', item.description).appendTo(sendToPage);
                	sendToPage.attr('href', "/ShoppingCart/action.do?action=productcategory&category=" + item.category).appendTo(sendToPage);
                	carouselCaption.appendTo(outerItemDiv);
                	caption.text(item.brand + " " + item.name).appendTo(carouselCaption);
                	captionPrice.text("$" + item.price).appendTo(caption);
        			
                }	
            });
        });
       
});