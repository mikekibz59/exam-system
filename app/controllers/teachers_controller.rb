class TeachersController < ApplicationController
include Accesible
before_action :authenticate_teacher!
skip_before_action :check_user, only:[:destroy]
  def index
    @teachers = Teacher.all
  end
end
