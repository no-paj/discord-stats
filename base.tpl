<html>
    <head>
        <link rel="stylesheet" type="text/css" href="/static/bootstrap.min.css">
        <title>
            {{title or 'Discord Stats !'}}
        </title>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
        <!-- tablesorter plugin -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.tablesorter/2.24.5/js/jquery.tablesorter.js"></script>
        <!-- tablesorter widget file - loaded after the plugin -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.tablesorter/2.24.5/js/jquery.tablesorter.widgets.js"></script>

        <!-- pager plugin -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery.tablesorter/2.24.5/css/jquery.tablesorter.pager.min.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.tablesorter/2.24.5/js/extras/jquery.tablesorter.pager.min.js"></script>
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
