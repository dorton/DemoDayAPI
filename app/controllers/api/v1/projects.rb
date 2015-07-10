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


        desc "Return a project"
        params do
          requires :id, type: String, desc: "ID of the project"
        end
        get ":id", root: "project" do
          Project.find params[:id]
        end

        desc "Create a project"
        post do

          Project.create!({
            app_name: params[:project][:app_name],
            cohort_id: params[:project][:cohort],
            rationale: params[:project][:rationale],
            tech_used: params[:project][:tech_used],
            app_url:  params[:project][:app_url],
          })
        end


      end
    end
  end
end
