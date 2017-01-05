class StudentsController < InheritedResources::Base

    # GET /students
    # GET /students.json
    def index
      @students = Student.all

    end

    # GET /students/1
    # GET /students/1.json
    def show
      @student = Student.find params[:id]
      @project = Project.find params[:project_id]
    end

    # GET /students/new
    def new
      @city = City.find_by_slug params[:city_id]
      @cohort = @city.cohorts.find_by_slug params[:cohort_id]
      @project = @cohort.projects.new
      @student = @project.students.new
    end

    # GET /students/1/edit
    def edit
      @project = Project.find params[:project_id]
      @student = @project.students.find params[:id]
    end

    # POST /students
    # POST /students.json
    def create
      @project = Project.find params[:project_id]
      @student = @project.students.create(student_params)

      if @student.save
          redirect_to project_path(@project), notice: 'Student was successfully created.'
        else
          redirect_to project_path(@project), notice: 'Something went wrong.'
      end
    end

    # PATCH/PUT /students/1
    # PATCH/PUT /students/1.json
    def update
      @project = Project.find params[:project_id]
      @cohort = Cohort.find_by_slug params[:cohort_id]
      @student = @project.students.find params[:id]
        if @student.update(student_params)
          redirect_to project_student_path(@project, @student), notice: 'Student was successfully updated.'
        else
          render :edit
        end
    end

    # DELETE /students/1
    # DELETE /students/1.json
    def destroy
      @project = Project.find params[:project_id]
      @student = @project.students.find params[:id]
      @student.destroy
        redirect_to city_path(@project), notice: 'Student was successfully destroyed.'
    end



  private



    def student_params
      params.require(:student).permit(:name, :course, :portfolio_url, :email, :github_url, :app_name, :app_url, :rationale, :tech_used, :bio, :profile_pic_link, :city, :group_project)
    end
end
