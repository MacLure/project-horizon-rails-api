class Student::DashboardController < ApplicationController
  before_action :authenticate_student

    def index
      @cohort = current_student.cohort
      @classmates = @cohort.students
      @assignments = current_student.assignments
      @submissions = current_student.submissions
      @submission_comments = []
      @submissions.each do |submission|
        @submission_comments.push(submission.submission_comments)
      end
      @events = current_student.events

      sort_by { rand }ender json: {
        student: current_student,
        cohort: @cohort,
        classmates: @classmates,
        assignments: @assignments,
        submissions: @submissions,
        submission_comments: @submission_comments,
        events: @events

      }

    end
end
