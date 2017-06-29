module Api
  module V2
    class StudentsController < ApiV2Controller
        before_action :set_students, only: [:show, :update, :destroy]

        before_action do
          request.format = :json
        end

        def index
          @students = Student.joins(:cohort).where('cohorts.city_id = ?', City.find_by_name("Houston"))
        end

        def show
          #code
        end

        def update
          #code
        end

        def destroy
          #code
        end

        private

        def set_student
          @student = Student.find_by!(id: params[:id])
        end

        # Never trust parameters from the scary internet, only allow the white list through.
        def student_params
          params.require(:student).permit(:name, :course, :email, :demo_day_date, :portfolio_url, :github_url, talk_ids: [])
        end


    end

  end

end
