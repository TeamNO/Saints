<html class="no-js" lang="en" data-useragent="Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.2; Trident/6.0)">
    <head>
        <meta charset="utf-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <meta name="description" content="Documentation and reference library for ZURB Foundation. JavaScript, CSS, components, grid and more."/>
        <meta name="author" content="ZURB, inc. ZURB network also includes zurb.com"/>
        <meta name="copyright" content="ZURB, inc. Copyright (c) 2015"/>
        <link rel="stylesheet" href="../../assets/css/foundation.css"/>
        <script src="../../assets/js/modernizr.js"></script>
        <title>New Orleans Saints</title>
        <img class="banner" src="/assets/img/saint_banner.jpg">
    </head>
    <body>
        <div class="row">
            <div class="large-12 columns">
                <div class="nav-bar">
                    <ul class="button-group">
                        <li><a href='/' class="button">Home</a></li>
                        <li><a href='roster' class="button">Roster</a></li>
                        <li><a href='league' class="button">League</a></li>
                        <li><a href='admin' class="button">CRUD</a></li>
                        <li><a href='about' class="button">About</a></li>
                    </ul>
                </div>
                    {content} 
                <hr/>
                <div class="large-6 columns">
                    <ul class="inline-list right">
                        <li><a href="/">Home</a></li>
                        <li><a href="roster">Roster</a></li>
                        <li><a href="league">League</a></li>
                        <li><a href='admin'>CRUD</a></li>
                        <li><a href="about">About</a></li>
                    </ul>
                </div>
                <p>&copy; Saints Team Roster</p>
            </div>
        </div>
        <script>
          document.write('<script src=js/vendor/' +
          ('__proto__' in {} ? 'zepto' : 'jquery') +
          '.js><\/script>')
        </script>
        <script src="../../assets/js/vendor/jquery.js"></script>
        <script src="../../assests/js/foundation.min.js"></script>
        <script>
              $(document).foundation();

              var doc = document.documentElement;
              doc.setAttribute('data-useragent', navigator.userAgent);
        </script>
    </body>
</html>