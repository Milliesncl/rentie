import Chart from 'chart.js';

const createHeaderChart = () => {
  const roiChartElement = document.getElementById("roi-chart");
  if (roiChartElement === null)
    return;
  const roiData = JSON.parse(roiChartElement.dataset.roiData);
  const data = {
    labels: ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September','October','November','December'],
    datasets: [{
      label: "Loss",
      fill: false,
      backgroundColor: ["#80D0C7","#80D0C7","#80D0C7","#80D0C7","#80D0C7","#80D0C7","#80D0C7","#80D0C7","#80D0C7","#80D0C7","#80D0C7","#80D0C7","#80D0C7"],
      borderColor: ["#80D0C7"],
      data: roiData[0]
    },{
      label:"Profit",
      fill: false,
      backgroundColor: ["#07A3B2","#07A3B2","#07A3B2","#07A3B2","#07A3B2","#07A3B2","#07A3B2","#07A3B2","#07A3B2","#07A3B2","#07A3B2"],
      borderColor: ["#07A3B2"],
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
      },
      hover: {
        mode: 'nearest',
        intersect: true
      },
    }
  });
};

export { createHeaderChart };

