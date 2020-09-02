import Chart from 'chart.js';

const createHeaderChart = () => {
  const roiChartElement = document.getElementById("roi-chart");
  if (roiChartElement === null)
    return;
  const roiData = JSON.parse(roiChartElement.dataset.roiData);
  console.log(roiData)
  const data = {
    labels: ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September','October','November','December'],
    datasets: [{
      fill: false,
      backgroundColor: ["#F4F4F4"],
      data: roiData[0]
    },{
      fill: false,
      backgroundColor: ["#009BA5"],
      data: roiData[1]
    }
  ]
  };

  const roiChart = new Chart(roiChartElement, {

    type: 'line',
    data: data,
    options: {
      scales: {
        // xAxes: [{
        //   type: 'time',
        //   time: {
        //       unit: 'month'
        //   }
        // }],
        yAxes: [{
            ticks: {
                min: 0
            }
        }]
      },
      tooltips: {
        mode: 'index',
        intersect: false,
        callbacks: {
          label: function(tooltipItems, data) {
            return ` ${data.labels[tooltipItems.index]}: $${data.datasets[0].data[tooltipItems.index]}`;
          }
        },
      },
      hover: {
        mode: 'nearest',
        intersect: true
      },
    }
  });
};

export { createHeaderChart };

