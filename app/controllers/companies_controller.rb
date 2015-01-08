class CompaniesController < ApplicationController
  def index
    @companies = Company.all
    render :index
  end

  def new
    @user = User.new
    render :new
  end

  def create
    @company = Company.new(user_params)

    if @company.save
      flash.now[:errors] = ["Successful"]
      render :new
    else
      flash.now[:errors] = @company.errors.full_messages
      render :new
    end
  end

  def show
    @company = Company.find(params[:id])
    render :show
  end

  private
  def company_params
    params.require(:company).permit(:ticker)
  end
end
