module Accesible
extend ActiveSupport::Concern
  include do
    before_action :check_user
  end

  protected

    def check_user
      if current_teacher
        flash.clear
        redirect_to(root_path) && return
      elsif current_student
        flash.clear
        redirect_to(students_path) && return
    end
  end
end
