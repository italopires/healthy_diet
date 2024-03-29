class Web::DashboardsController < ApplicationController
  def index
    diet = current_user.diets.order(initial_date: :desc).first
    weight_movements = diet.weight_movements.where(reference_date: diet.initial_date..diet.final_date)
                           .order(reference_date: :desc).limit(30)
    days = weight_movements.map { |meal| meal.reference_date.day  }
    weights = weight_movements.map { |weight_movement| weight_movement.weight }
    @data = {
        labels: days,
        datasets: [
            {
                label: "Peso",
                backgroundColor: "rgba(220,220,220,0.2)",
                borderColor: "#0055fe",
                data: weights
            }
        ]
    };
    @options = { responsive: true,
                 maintainAspectRatio: false,
                 scales: {
                     yAxes: [{
                                 ticks: {
                                     beginAtZero:true
                                 }
                             }]
                 } }
  end
end