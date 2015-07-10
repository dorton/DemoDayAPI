module API
  module V1
    class Cohorts < Grape::API
      include API::V1::Defaults

      resource :cohorts do
        desc "Return all cohorts"
        # params do
        #   optional :group_project, type: Boolean, desc: "See Group Projects"
        # end
        get "", root: :cohorts do

          query = Cohort.all

          query
        end

        desc "Return a specific cohort"
        get ":id", root: :cohort do
          Cohort.find params[:id]
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
