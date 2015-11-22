<html>
    <head>
        <link rel="stylesheet" type="text/css" href="/static/bootstrap.min.css">
        <title>
            Discord Stats !
        </title>
    </head>

    <body>

        <nav class="navbar navbar-default">
          <div class="container">
            <div class="navbar-header">
              <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-2">
                <span class="sr-only">Toggle navigation</span>
              </button>
              <a class="navbar-brand" href="#">Discord Stats</a>
            </div>
          </div>
        </nav>

        <div class="container">
            <div class="row">
                <h1>Welcome to Discord Stats !</h1>
                <p class="lead">
                    Just a bunch of stats about an awesome a chat service
                </p>
            </div>

            <div class="row">
                <h2>Online users</h2>
                <script type="text/javascript">
                    window.onload = function () {

                }
                </script>
                <script type="text/javascript" src="/static/canvasjs.min.js"></script>
                <div id="chartContainer" style="height: 300px; width: 100%;"></div>
            </div>

            <div class="row">
                <h2>Users Playing a game</h2>
                <div id="chartContainer2" style="height: 300px; width: 100%;"></div>
            </div>

            <div class="row">
                <h2>Servers</h2>

                <div id="chartContainer3" style="height: 300px; width: 100%;"></div>
            </div>
        </div>

        <script type="text/javascript">
                    window.onload = function () {
                    var chart3 = new CanvasJS.Chart("chartContainer3",
                    {
                      title:{
                        text: ""
                      },
                      animationEnabled: true,
                      axisY:{
                        includeZero: false,
                        interval: 1,
                        valueFormatString: "#.00"
                      },

                      data: [
                      {
                        type: "stepLine",
                        toolTipContent: "{x}: {y}",
                        markerSize: 5,
                        dataPoints: [
                                %for item in online:
                                    {x: new Date({{item['timestamp']}}*1000), y: {{item['servers']}}},
                                %end
                        ],
                      }

                      ]
                    });


                var chart1 = new CanvasJS.Chart("chartContainer",
                    {
                      title:{
                        text: ""
                      },
                      animationEnabled: true,
                      axisY:{
                        includeZero: false,
                        interval: 100,
                        valueFormatString: "#.00"
                      },

                      data: [
                      {
                        type: "stepLine",
                        toolTipContent: "{x}: {y}",
                        markerSize: 5,
                        dataPoints: [
                                %for item in online:
                                    {x: new Date({{item['timestamp']}}*1000), y: {{item['online']}}},
                                %end
                        ],
                      }

                      ]
                    });

                var chart2 = new CanvasJS.Chart("chartContainer2",
                    {
                      title:{
                        text: ""
                      },
                      animationEnabled: true,
                      axisY:{
                        includeZero: false,
                        interval: 50,
                        valueFormatString: "#.00"
                      },

                      data: [
                      {
                        type: "stepLine",
                        toolTipContent: "{x}: {y}",
                        markerSize: 5,
                        dataPoints: [
                                %for item in online:
                                    {x: new Date({{item['timestamp']}}*1000), y: {{item['playing']}}},
                                %end
                        ],
                      }

                      ]
                    });

                chart2.render();
                chart1.render();
                chart3.render();
                }
                </script>

    </body>
</html>
