<html>
    <head>
        <link rel="stylesheet" type="text/css" href="/static/bootstrap.min.css">
        <title>
            {{title or 'Discord Stats !'}}
        </title>
        <script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
        <script src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
        <!-- tablesorter plugin -->
        <script src="static/jquery.tablesorter.js"></script>
        <!-- tablesorter widget file - loaded after the plugin -->
        <script src="static/jquery.tablesorter.widgets.js"></script>

        <!-- pager plugin -->
        <link rel="stylesheet" href="static/jquery.tablesorter.pager.css">
        <script src="static/jquery.tablesorter.pager.js"></script>
    </head>

    <body>

        <nav class="navbar navbar-default">
          <div class="container">
            <div class="navbar-header">
              <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-2">
                <span class="sr-only">Toggle navigation</span>
              </button>
              <a class="navbar-brand" href="/">Discord Stats</a>
            </div>
          </div>
        </nav>

        <div class="container">
            {{!base}}
        </div>

    </body>

</html>
