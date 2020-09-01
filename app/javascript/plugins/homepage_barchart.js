import Chart from 'chart.js';

const config = {
  type: 'bar',
  data: {
        labels: ['January', 'February', 'March', 'April', 'May', 'June'],
        datasets: [{
          label: 'My First dataset',
          fill: false,
          backgroundColor: ["#F4F4F4", "#13547A", "#80D0C7", "#07A3B2", "#D9ECC7", "#009BA5"]
        }]
      },
  options: {
    scales: {
      xAxes: [{
          stacked: true
      }],
      yAxes: [{
          stacked: true
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
};

// const config = {
//   type: 'line',
//   data: {
//     labels: ['January', 'February', 'March', 'April', 'May', 'June', 'July'],
//     datasets: [{
//       label: 'My First dataset',
//       fill: false,
//     }]
//   },
//   options: {
//     title: {
//       display: true,
//       text: 'Chart.js Line Chart'
//     },
//     tooltips: {
//       mode: 'index',
//       intersect: false,
//     },
//     hover: {
//       mode: 'nearest',
//       intersect: true
//     },
//     scales: {
//       xAxes: [{
//         display: true,
//         scaleLabel: {
//           display: true,
//           labelString: 'Month'
//         }
//       }],
//       yAxes: [{
//         display: true,
//         scaleLabel: {
//           display: true,
//           labelString: 'Value'
//         }
//       }]
//     }
//   }
// };

const createExpenseChart = () => {
  const expenseChartElement = document.getElementById("expense-chart");
  if (expenseChartElement === null)
    return;
  const data = JSON.parse(expenseChartElement.dataset.expenseData);
  config.data.datasets[0].data = data
  const expenseChart = new Chart(expenseChartElement, config);
};

export { createExpenseChart };
