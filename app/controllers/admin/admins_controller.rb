class Admin::AdminsController < ApplicationController
  before_action :authenticate_admin

  def find
  @admin = Admin.find_by(email: params[:admin][:email])
  if @admin
    render json: @admin
  else
    @errors = @admin.errors.full_messages
    render json: @errors
  end
 end

  # def index
  #   @admins = Admin.all
  #   @cohorts = Cohort.all
  #   @students = Student.all
  #
  #   render json: {admins: @admins, cohorts: @cohorts, students: @students}
  # end

  def create
    admin = JSON.parse(params['admin'])
    admin = Admin.create(admin)
    if admin.valid? && admin.save
      render json: admin
    else
      render json: admin.errors, status: 400
    end
  end

  def show
    render json: @admin
  end

  def update
    if @admin.update(admin_params)
      render json: @admin
    end
  end

  def destroy
    Admin.destroy(params[:id])
  end

  private


  def admin_params
    params.require(:admin).permit( :first_name, :last_name, :phone, :email, :password, :image_url, :company_id)
  end
end
