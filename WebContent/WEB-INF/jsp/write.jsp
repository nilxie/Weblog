<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  
  
  <title>DaraW | Code is Poetry</title>

  <meta name="author" content="DaraW">
  
  <meta name="description" content="JavaScript Developer">
  

  <meta id="viewport" name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no, minimal-ui">
  <meta name="apple-mobile-web-app-capable" content="yes">
  <meta name="apple-mobile-web-app-status-bar-style" content="black">
  

  <link rel="alternate" href="" title="DaraW" type="application/atom+xml">
  <link rel="stylesheet" href="./assets/css/style_index.css" media="screen" type="text/css">
</head>


<body>

<div class="blog">
  <div class="content">

    <header>
  		<div class="site-branding">
    		<h1 class="site-title">
      			<a href="load.jsp">Hello</a>
    		</h1>
    		<p class="site-description">Code is Poetry</p>
 		 </div>
  		<nav class="site-navigation">
    		<ul>
   
        		<li><a href="RefreshWordsListAction">主页</a></li> 
        		<li><a href="SaveWordsAction">撰写</a></li>
    		</ul>
  		</nav>
	</header>

    <main class="site-main posts-loop">
   
   		<div align="center" >
    		<form action="SaveWordsAction" method="POST">
				<input type="text" name="content" placeholder="AT MOST 100 WORDS" style=" width:300px; height: 150px ">
				<br>
				<input type="submit" value="Done">
			</form>
		</div>
    
    </main>

    <footer class="site-footer">
  		<p class="site-info">
    		Proudly powered by <a target="_blank">Hexo</a> and
    		Theme by <a target="_blank">Hacker</a>
    		<br>
    		© 2017 DaraW  
  		</p>
	</footer>
  
  </div>
</div>

</body><div></div></html>