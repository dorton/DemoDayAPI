module API
  module V1
    class Students < Grape::API
      include API::V1::Defaults

      resource :students do
        desc "Return all students"
        params do
          optional :city, type: String, desc: "City of the student (Houston, Austin, Atlanta, Greenville, Charleston, Orlando, Tampa, Washington DC)"
        end
        params do
          optional :course, type: String, desc: "Course for student (Rails Engineering, Front End Engineering, Python Engineering, Mobile Engineering, UI)"
        end
        # params do
        #   optional :group_project, type: Boolean, desc: "See Group Projects"
        # end
        get "", root: :students do

          query = Student.all

          if permitted_params[:city].present?
            cities = Cohort.where city: params[:city]
            query = query.where(cohort_id: cities.pluck(:id))
          end


          query = query.where(course: permitted_params[:course]) if permitted_params[:course].present?
          # query = query.where(group_project: permitted_params[:group_project]) if permitted_params[:group_project].present?

          query
        end


        # desc "Return a student"
        # params do
        #   requires :id, type: String, desc: "ID of the student"
        # end
        # get ":id", root: "student" do
        #   Student.where(id: permitted_params[:id]).first!
        # end



      end
    end
  end
end
