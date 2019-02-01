class Student::StudentTokenController < Knock::AuthTokenController
  def find
   @student = Student.find_by(email: params[:student][:email])
   if @student
     render json: @student
   else
     @errors = @student.errors.full_messages
     render json: @errors
   end
  end

  def index
    @admins = Admin.all
    @cohorts = Cohort.all
    @students = Student.all

    render json: {admins: @admins, cohorts: @cohorts, students: @students}
  end

  def create
    student = JSON.parse(params['student'])
    student = Student.create(student)
    render json: student
  end

  def show
    @student = Student.find(params["id"])
  end

  def update
    student = Student.find(params["id"])
    student.update_attributes(student_params)
  end

  def destroy
    Student.destroy(params[:id])
  end

  private

  def student_params
    params.require(:student).permit( :first_name, :last_name, :phone, :email, :cohort_id, :image_url)
  end

end
