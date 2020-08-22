class ApplicantsController < ApplicationController
    skip_before_action :authenticate_user!, only: [:index]
  def index
    
  end
  def show
    @applicant = Applicant.find(params[:id])
  end
end
