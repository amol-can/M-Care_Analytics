/**
 * 
 */

Highcharts.chart('piechartContainer', {
    chart: {
        plotBackgroundColor: null,
        plotBorderWidth: null,
        plotShadow: false,
        type: 'pie'
    },
    title: {
        text: 'Analysis of pregnant women'
    },
    tooltip: {
        pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
    },
    plotOptions: {
        pie: {
            allowPointSelect: true,
            cursor: 'pointer',
            dataLabels: {
                enabled: true,
                format: '<b>{point.name}</b>: {point.percentage:.1f} %',
                style: {
                    color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
                }
            }
        }
    },
    series: [{
        name: 'Patient per',
        colorByPoint: true,
        data: [{
            name: 'HighRisk',
            y: 5,
            sliced: true,
            selected: true
        },  {
            name: 'Normal',
            y: 3
        }]
    }]
});