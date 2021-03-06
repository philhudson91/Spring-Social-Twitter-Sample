<%@ page session="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="header.jsp" ></jsp:include>
        
<script type='text/javascript' src='https://www.google.com/jsapi'></script>
    <script type='text/javascript'>
      google.load('visualization', '1', {packages:['table']});
      google.setOnLoadCallback(drawTable);
      function drawTable() {
        var data = new google.visualization.DataTable();
        
        data.addColumn('number', 'Stats');
        
        data.addRows(4);
        
                                    
                                    
        data.setCell(0, 0, <c:out value="${followersCount}"></c:out>, '<c:out value="${followersCount}"></c:out> followers');
       
        
        data.setCell(1, 0, <c:out value="${friendsCount}"></c:out>, '<c:out value="${friendsCount}"></c:out> friends');
        
        
        data.setCell(2, 0, <c:out value="${listedCount}"></c:out>, '<c:out value="${listedCount}"></c:out> listed');
        
        
        data.setCell(3, 0, <c:out value="${statusesCount}"></c:out>, '<c:out value="${statusesCount}"></c:out> statuses');
        

        var table = new google.visualization.Table(document.getElementById('table_div'));
        table.draw(data, {showRowNumber: false});
      }
    </script>

</head>
    <body>
        <script type="text/javascript">
            var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
            document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
        </script>
        <script type="text/javascript">
            try {
                var pageTracker = _gat._getTracker("UA-1814607-8");
                pageTracker._trackPageview();
            } catch(err) {}</script>
<div class="main">
            <div class="header">
                <div class="header_resize">
                    <div class="logo">
                        <h1><a href="/">Twitter Services</a> <small></small></h1>
                    </div>
                    <div class="menu_nav">
                        <ul>
                            
                            <li id="homeLi" class="active"><a href="<c:url value="/signout" />">Sign Out</a></li>
                        </ul>
                    </div>
                    <div class="clr"></div>
                </div>
            </div>
            <div class="content">

                <div class="content_resize">
                    <div class="mainbar">
                        <div id="HOME">
                            <div class="article">
                                
                                <div class="line">
                                    <span class="left"><h2><c:out value="${screenName}"></c:out></h2></span>
                                    <span class="right"> <img src="<c:out value="${profileImageUrl}"></c:out>">  </img></span>
                                </div>
                               <br/><br/><br/>
                                <div class="clr"></div>
                                <p>
                                    You're using Twitter since <c:out value="${createdDate}"></c:out>. that's mean <c:out value="${days}"></c:out> days.<br/>    
                                </p>
                                <div id='table_div'></div>
                                </div>
                                <div class="line" align="center">
                                    <a href="/follower.csv"><img height="132" src="/resources/images/CSV.png" title="download followers list"/>
                                    </a>
                                </div>
                        </div>
                        

                      
                        


                    </div>

                    <div class="sidebar">
                        
                        

                        <div class="gadget">
                            <!-- Place this tag where you want the +1 button to render -->
                            
                            <h2 class="star"><span>My Social</span> Network</h2>
                            <div class="clr"></div>
                            <ul class="sb_menu">
                                <li><a target="_blank" href="http://www.linkedin.com/in/nihed"><img height="132" src="/resources/images/linkedin.png" alt="Linkedin"></img></a></li>
                                <li><a target="_blank" href="http://twitter.com/nihed"><img src="/resources/images/twitter4.png" alt="Twitter"></img></a></li>
                                <li><a target="_blank" href="https://www.facebook.com/NIhed.Page"><img src="/resources/images/facebook1.png" alt="Facebook"></img></a></li>

                            </ul>
                        </div>
                       
                    </div>
                    <div class="clr"></div>
                </div>







            </div>
                            
<jsp:include page="footer.jsp" ></jsp:include>