import Chart from 'chart.js';

const createBuildingExpensesChart = () => {
  const buildingExpenseChartElement = document.getElementById("building-expense-chart");
  if (buildingExpenseChartElement === null)
    return;
  const buildingExpenseData = JSON.parse(buildingExpenseChartElement.dataset.buildingExpenseData);
  const data = {
  datasets: [{
      data: buildingExpenseData[1],
      backgroundColor: ["#F4F4F4", "#13547A", "#80D0C7", "#07A3B2", "#D9ECC7", "#009BA5"]
  }],

  // These labels appear in the legend and in the tooltips when hovering different arcs
  labels: buildingExpenseData[0]
  };
  const buildingExpensesChart = new Chart(buildingExpenseChartElement, {
    type: 'doughnut',
    data: data,
    options: {
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

export { createBuildingExpensesChart };
