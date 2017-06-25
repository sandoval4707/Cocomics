<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="fachada" scope="session" class="com.Fachada.Fachada"/>
<jsp:setProperty property="*" name="fachada"/>

<%@page contentType="text/html" pageEncoding="UTF-8"
        import="com.DTO.MangaDto"
        import="java.util.ArrayList"
%>


<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="../../docs-assets/ico/favicon.png">

    <title>Principal de anime </title>
     
    <!-- Bootstrap core CSS -->
    <link href="assets/css/bootstrap.css" rel="stylesheet">


    <!-- Custom styles for this template -->
    <link href="assets/css/main.css" rel="stylesheet">

    <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
    <script src="assets/js/hover.zoom.js"></script>
    <script src="assets/js/hover.zoom.conf.js"></script>

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>
  
  <h1></h1>
    <!-- Static navbar -->
    <div class="navbar navbar-inverse navbar-static-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="index.html">COMIC -ANIME-YET</a>
        </div>
        <div class="navbar-collapse collapse">
          <ul class="nav navbar-nav navbar-right">
            <li><a href="work.html">Work</a></li>
            <li><a href="about.html">About</a></li>
            <li><a href="blog.html">Blog</a></li>
            <li><a href="contact.html">Contact</a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </div>

	<!-- +++++ Welcome Section +++++ -->
	<div id="ww">
	    <div class="container">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2 centered">
					<img src="assets/img/fotoPerfil.jpg" width="200px" height="200px" class="img-circle">
					<h1>HOLA SERGIO!</h1>
				</div><!-- /col-lg-8 -->
			</div><!-- /row -->
	    </div> <!-- /container -->
	    
	    <%
	    
	    ArrayList<MangaDto> d=fachada.mostrarMangas();
          
	    int cont=0;
	                        while(cont<d.size()){
	                        	
	             
	       %>
	       				<div class="row mt centered">	
		  <br>
	       
	          
	       <%
	                        	for(int i=0;i<3&&cont<d.size();i++)
	                        	{
	                        		
	                        	
	        %>                	
	        <div class="col-lg-4">
	        <form action="">
	         <a class="zoom green" href="animeSeleccion.jsp?var=<%=d.get(cont).getNombre()%>"  align="center"><center><img class="img-responsive" src="<%=d.get(cont).getImagen()%>"/></center></a>
	        <p><%=d.get(cont).getNombre()%></p>
	      
	        </form>
	        <br>
	        </div>   
	        <%         
	      					  cont++;
	               
	                        	}
	                        	
	              %>
	              
	              </div>
	              <%
	                         	
	                        }
	    
	    %>
	
	<!-- +++++ Projects Section +++++ -->
	<div class="container pt">
		
	
	</div><!-- /container -->
	
	
	<!-- +++++ Footer Section +++++ -->
	
	<div id="footer">
		<div class="container">
			<div class="row">
				<div class="col-lg-4">
					<h4>My Bunker</h4>
					<p>
						Some Address 987,<br/>
						+34 9054 5455, <br/>
						Madrid, Spain.
					</p>
				</div><!-- /col-lg-4 -->
				
				<div class="col-lg-4">
					<h4>My Links</h4>
					<p>
						<a href="#">Dribbble</a><br/>
						<a href="#">Twitter</a><br/>
						<a href="#">Facebook</a>
					</p>
				</div><!-- /col-lg-4 -->
				
				<div class="col-lg-4">
					<h4>About Stanley</h4>
					<p>This cute theme was created to showcase your work in a simple way. Use it wisely.</p>
				</div><!-- /col-lg-4 -->
			
			</div>
		
		</div>
	</div>
	

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="assets/js/bootstrap.min.js"></script>
  </body>
</html>
