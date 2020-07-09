class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
    set_student
  end


  private

    def to_s
      "#{self.first_name} #{self.last_name}"
    end

    def set_student
      @student = Student.find(params[:id])
    end
end
