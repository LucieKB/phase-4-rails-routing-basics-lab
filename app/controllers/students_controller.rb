class StudentsController < ApplicationController
    def index
        students = Student.all
        render json:students
    end

    def grades
        grades = Student.all.sort_by {|student| student.grade }.reverse
        render json:grades
    end

    def highest_grade
        bestgrade = Student.all.sort_by {|student| student.grade }.reverse.first
        render json:bestgrade
    end

end
