import Chart from 'chart.js';

const createUnitExpensesChart = () => {
  const unitExpenseChartElement = document.getElementById("unit-expense-chart");
  if (unitExpenseChartElement === null)
    return;
  const unitExpenseData = JSON.parse(unitExpenseChartElement.dataset.unitExpenseData);
  const data = {
    datasets: [{
        data: unitExpenseData[1],
        backgroundColor: ["#F4F4F4", "#13547A", "#80D0C7", "#07A3B2", "#D9ECC7", "#009BA5"]
    }],

  // These labels appear in the legend and in the tooltips when hovering different arcs
    labels: unitExpenseData[0]
  };
  const unitExpensesChart = new Chart(unitExpenseChartElement, {
    type: 'doughnut',
    data: data,
    options: {
      legend: {
        boxWidth: 20,
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

export { createUnitExpensesChart };
