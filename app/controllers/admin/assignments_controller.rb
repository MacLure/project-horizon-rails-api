class Admin::AssignmentsController < ApplicationController
  def index
    @assignemnt = Assignment.all
    render json: @assignemnt
  end

  def create
    assignemnt = JSON.parse(params['assignemnt'])
    assignemnt = Assignment.create(assignemnt)
    render json: assignemnt
  end

  def show
    render json: @assignemnt
  end

  def update
    @assignment = Assignment.find(JSON.parse(params['id']))
    @assignment.update
  end

  def destroy
    @assignment = Assignment.find(JSON.parse(params['id']))
    @assignment.destroy
  end

  private

  def assignemnt_params
    params.require(:assignemnt).permit( :cohort_id, :name, :body, :due_date )
  end
end
