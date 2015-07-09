module API
  module V1
    class Projects < Grape::API
      include API::V1::Defaults

      resource :projects do
        desc "Return all projects"
        # params do
        #   optional :group_project, type: Boolean, desc: "See Group Projects"
        # end
        get "", root: :projects do

          query = Project.all

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
