class DashboardController < ApplicationController
  def index
   @person = current_student.email
  end
end
