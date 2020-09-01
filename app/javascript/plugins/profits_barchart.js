import Chart from 'chart.js';

const createProfitsChart = () => {
  const profitsChartElement = document.getElementById("profits-chart");
  if (profitsChartElement === null)
    return;
  const profitsData = JSON.parse(profitsChartElement.dataset.profitsData);
  const data = {
    datasets: [{
      fill: false,
      backgroundColor: ["#F4F4F4", "#13547A", "#80D0C7", "#07A3B2", "#D9ECC7", "#009BA5"],
      data: profitsData[1]
    }],
    labels: profitsData[0]
  };

  const expenseChart = new Chart(profitsChartElement, {
    type: 'horizontalBar',
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

export { createProfitsChart };

