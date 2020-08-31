import Chart from 'chart.js';



const config = {
  type: 'line',
  data: {
    labels: ['January', 'February', 'March', 'April', 'May', 'June', 'July'],
    datasets: [{
      label: 'My First dataset',
      fill: false,
    }]
  },
  options: {
    title: {
      display: true,
      text: 'Chart.js Line Chart'
    },
    tooltips: {
      mode: 'index',
      intersect: false,
    },
    hover: {
      mode: 'nearest',
      intersect: true
    },
    scales: {
      xAxes: [{
        display: true,
        scaleLabel: {
          display: true,
          labelString: 'Month'
        }
      }],
      yAxes: [{
        display: true,
        scaleLabel: {
          display: true,
          labelString: 'Value'
        }
      }]
    }
  }
};

const createExpenseChart = () => {
  const expenseChartElement = document.getElementById("expense-chart");
  const data = JSON.parse(expenseChartElement.dataset.expenseData);
  config.data.datasets[0].data = data
  const expenseChart = new Chart(expenseChartElement, config);
};

export { createExpenseChart };