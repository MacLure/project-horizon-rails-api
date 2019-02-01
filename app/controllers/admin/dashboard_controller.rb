class Admin::DashboardController < ApplicationController
  before_action :authenticate_admin
    def index
      @admins = current_admin
      @admins = Admin.all
      @cohorts = Cohort.all
      @students = Student.all
      @student_notes = StudentNote.all
      @assignments = Assignment.all
      @submissions = Submission.all
      @submission_comments = SubmissionComment.all
      @company_notes = CompanyNote.all
      @contact_notes = ContactNote.all
      @events = Event.all

      render json: {
        admins: @admins,
        cohorts: @cohorts,
        students: @students,
        student_notes: @student_notes,
        assignments: @assignments,
        submissions: @submissions,
        submission_comments: @submission_comments,
        company_notes: @company_notes,
        contact_notes: @contact_notes,
        events: @events,
      }

    end
end
