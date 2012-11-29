<!DOCTYPE html>
<html>
<head>
	<meta name="layout" content="main" />
	<title>GUM Calendar</title>
        <script>

          function insertAgenda(data){
            //alert(data.feed.entry[0].content.$t);
            
            var content  = '';
            
            if(data.feed.entry.length > 0){
              content += "<h2>Next Upcoming Event</h2>" + "<div class='event first-event'>" + data.feed.entry[0].content.$t +"</div>";
            }
            
            if(data.feed.entry.length > 2){

              content += "<h3>Future Upcoming Events</h3>";
              
              for(var i = 1; i < data.feed.entry.length; i++){
 
                content += "<div class='event'>" + data.feed.entry[i].summary.$t +"</div>";

              }
                

                
              }

              $("#events").append(content);

              
           }
            
          

        </script>
</head>
<body>
	<div class="container calendar">
         
                <!--
		<p>
			Calendar Links:
			<a href="http://www.google.com/calendar/hosted/refactr.com/embed?src=refactr.com_eusenb5e3tksvr3881v8mpg7t8%40group.calendar.google.com">HTML</a>,
			<a href="http://www.google.com/calendar/ical/refactr.com_eusenb5e3tksvr3881v8mpg7t8%40group.calendar.google.com/public/basic.ics">iCal</a>,
			<a href="http://www.google.com/calendar/feeds/refactr.com_eusenb5e3tksvr3881v8mpg7t8%40group.calendar.google.com/public/basic">XML</a>
		</p>
                -->
		
                <div id="events"></div>

          </div>

	
        <script src="http://www.google.com/calendar/feeds/refactr.com_eusenb5e3tksvr3881v8mpg7t8%40group.calendar.google.com/public/basic?alt=json-in-script&callback=insertAgenda&orderby=starttime&max-results=5&singleevents=true&sortorder=ascending&futureevents=true" type="text/javascript"></script>
        
        
</body>
</html>