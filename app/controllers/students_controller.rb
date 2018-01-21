class StudentsController < ApplicationController
before_action :authenticate_student!
  def index
    @student = Student.all
  end
end
