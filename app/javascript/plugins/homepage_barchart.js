import Chart from 'chart.js';

const createExpenseChart = () => {
  const expenseChartElement = document.getElementById("expense-chart");
  if (expenseChartElement === null)
    return;
  const expenseData = JSON.parse(expenseChartElement.dataset.expenseData);
  const data = {
    datasets: [{
      fill: false,
      backgroundColor: ["#F4F4F4", "#13547A", "#80D0C7", "#07A3B2", "#D9ECC7", "#009BA5"],
      data: expenseData[1]
    }],
    labels: expenseData[0]
  };

  const expenseChart = new Chart(expenseChartElement, {
    type: 'bar',
    data: data,
    options: {
      // scales: {
      //   xAxes: [{
      //       stacked: true
      //   }],
      //   yAxes: [{
      //       stacked: true
      //   }]
      // },
      tooltips: {
        mode: 'index',
        intersect: false
        // callbacks: {
        //   label: function(tooltipItems, data) {
        //     return ` ${data.labels[tooltipItems.index]}: $${data.datasets[0].data[tooltipItems.index]}`;
        //   }
        // },
      },
      hover: {
        mode: 'nearest',
        intersect: true
      },
    }
  });
};

export { createExpenseChart };

