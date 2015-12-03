% rebase('base.tpl', title=None)
            <script src="https://code.highcharts.com/highcharts.js"></script>
            <script src="https://code.highcharts.com/modules/exporting.js"></script>
            <div class="row">
                <h1>Welcome to Discord Stats !</h1>
                <p class="lead">
                    Just a bunch of stats about an awesome chat service
                </p>
            </div>


            <div class="row">
                <h2>Online users</h2>
                <div id="online">
                </div>
            </div>

            <script>
                $(function () {
                    $('#online').highcharts({
                        chart: {
                            type: 'spline'
                        },
                        title: {
                            text: 'Online users'
                        },
                        xAxis: {
                            type: 'datetime',
                            labels: {
                                overflow: 'justify'
                            }
                        },
                        yAxis: {
                            title: {
                                text: 'Users'
                            },
                            minorGridLineWidth: 1,
                            gridLineWidth: 1,
                            alternateGridColor: null,
                            plotBands: []
                        },
                        tooltip: {
                            valueSuffix: 'users'
                        },
                        plotOptions: {
                            spline: {
                                lineWidth: 4,
                                states: {
                                    hover: {
                                        lineWidth: 5
                                    }
                                },
                                marker: {
                                    enabled: false
                                },
                            }
                        },
                        series: [{
                            name: 'Online',
                            data: [
                                    %for item in online:
                                        {x: new Date({{item['timestamp']}}*1000), y: {{item['servers']}}},
                                    %end
                    ]

                        },
                    {
                            name: 'Playing',
                            data: [
                                    %for item in online:
                                        {x: new Date({{item['timestamp']}}*1000), y: {{item['playing']}}},
                                    %end
                    ]

                        }
                    ],
                        navigation: {
                            menuItemStyle: {
                                fontSize: '10px'
                            }
                        }
                    });
                });
            </script>


           <div class="row">
                <h2>Servers</h2>
                <div id="servers">
                </div>
            </div>

            <script>
                $(function () {
                    $('#servers').highcharts({
                        chart: {
                            type: 'spline'
                        },
                        title: {
                            text: 'Servers'
                        },
                        xAxis: {
                            type: 'datetime',
                            labels: {
                                overflow: 'justify'
                            }
                        },
                        yAxis: {
                            title: {
                                text: 'Servers'
                            },
                            minorGridLineWidth: 1,
                            gridLineWidth: 1,
                            alternateGridColor: null,
                            plotBands: []
                        },
                        tooltip: {
                            valueSuffix: 'servers'
                        },
                        plotOptions: {
                            spline: {
                                lineWidth: 4,
                                states: {
                                    hover: {
                                        lineWidth: 5
                                    }
                                },
                                marker: {
                                    enabled: false
                                },
                            }
                        },
                        series: [{
                            name: 'Servers',
                            data: [
                                    %for item in online:
                                        {x: new Date({{item['timestamp']}}*1000), y: {{item['servers']}}},
                                    %end
                    ]

                        }
                    ],
                        navigation: {
                            menuItemStyle: {
                                fontSize: '10px'
                            }
                        }
                    });
                });
            </script>