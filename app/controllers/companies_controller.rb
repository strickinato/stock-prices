class CompaniesController < ApplicationController
  def index
    @companies = Company.all
    render :json => @companies
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
    @companies = Company.joins(:users_companies).where(users_companies: { user_id: current_user.id })
    render :show
  end

  private
  def company_params
    params.require(:company).permit(:ticker)
  end
end
