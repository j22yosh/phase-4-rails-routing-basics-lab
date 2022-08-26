class StudentsController < ApplicationController
    def index
        s = Student.all
        render json: s
    end
    def grades
        s = Student.all
        render json: s.order('grade DESC')
    end
    def highest_grade
        s = Student.all
        render json: s.order('grade DESC').limit(1)
    end

end
