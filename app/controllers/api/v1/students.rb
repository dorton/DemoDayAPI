module API
  module V1
    class Students < Grape::API
      include API::V1::Defaults

      resource :students do
        desc "Return all students"
        get "", root: :students do
          Student.all
        end

        desc "Return a student"
        params do
          requires :id, type: String, desc: "ID of the student"
        end
        get ":id", root: "student" do
          Student.where(id: permitted_params[:id]).first!
        end

        # desc "Return a city"
        # params do
        #   requires :city, type: String, desc: "City of the student"
        # end
        # get ":city", root: "student" do
        #   Student.find(id: permitted_params[:city])
        # end

      end
    end
  end
end
