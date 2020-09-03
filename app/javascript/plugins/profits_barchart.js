import Chart from 'chart.js';

const createProfitsChart = () => {
  const profitsChartElement = document.getElementById("profits-chart");
  if (profitsChartElement === null)
    return;
  const profitsData = JSON.parse(profitsChartElement.dataset.profitsData);
  const data = {
    datasets: [{
      fill: false,
      backgroundColor: ["#80D0C7", "#07A3B2"],
      data: profitsData
    }],
    labels: ["Profits", "Loss"]
  };

  const expenseChart = new Chart(profitsChartElement, {
    type: 'horizontalBar',
    data: data,
    options: {
      scales: {
        xAxes: [{
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
        intersect: true,
      },
    }
  });
};

export { createProfitsChart };

