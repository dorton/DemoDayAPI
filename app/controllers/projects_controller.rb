class ProjectsController < InheritedResources::Base

    def index
      @cohort = Cohort.find_by_slug params[:cohort_id]
      @projects = @cohort.projects.all
    end

    def show
      @project = Project.find params[:id]
      @cohort = Cohort.find_by_slug params[:cohort_id]
    end


    def new
      @cohort = Cohort.find_by_slug params[:cohort_id]
      @project = @cohort.projects.new
    end


    def edit
      @cohort = Cohort.find_by_slug params[:cohort_id]
      @project = @cohort.projects.find params[:id]
    end

    def create
      @cohort = Cohort.find_by_slug params[:cohort_id]
      @project = @cohort.projects.create(project_params)

      if @project.save
          redirect_to cohort_project_path(@cohort, @project), notice: 'Project created.'
        else
          render :new
      end
    end

    def update
      @cohort = Cohort.find_by_slug params[:cohort_id]
      @project = @cohort.projects.find params[:id]

      if @project.update(project_params)
        redirect_to cohort_project_path(@cohort, @project)
      else
        render 'edit'
      end
    end

    def destroy
      @cohort = Cohort.find_by_slug params[:cohort_id]
      @project = @cohort.projects.find_by_slug params[:id]
      @project.destoy

      redirect_to cities_path
    end

  private

    def project_params
      params.require(:project).permit(:app_name, :app_url, :rationale, :tech_used, :cohort_id)
    end

end
