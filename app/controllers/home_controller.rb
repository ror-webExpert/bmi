class HomeController < ApplicationController
  skip_before_action :authenticate_user!, only: [:doctors]

  def index
  end

  def doctors
    @doctors = Doctor.all
    @disease_types = DiseaseType.all
    @data = @doctors.collect(&:doctor_data)
    @disease_types = @disease_types.collect(&:disease_type_data)
    render json: {doctors: @data, disease_types: @disease_types}, status: 200
  end
end
