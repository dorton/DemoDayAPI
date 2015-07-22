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
    end

    # GET /students/new
    def new
      @student = Student.new
    end

    # GET /students/1/edit
    def edit
      @student = Student.find params[:id]
    end

    # POST /students
    # POST /students.json
    def create
      @student = Student.new(student_params)

      respond_to do |format|
        if @student.save
          format.html { redirect_to @student, notice: 'Student was successfully created.' }
          format.json { render :show, status: :created, location: @student }
        else
          format.html { render :new }
          format.json { render json: @student.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /students/1
    # PATCH/PUT /students/1.json
    def update
      respond_to do |format|
        if @student.update(student_params)
          format.html { redirect_to @student, notice: 'Student was successfully updated.' }
          format.json { render :show, status: :ok, location: @student }
        else
          format.html { render :edit }
          format.json { render json: @student.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /students/1
    # DELETE /students/1.json
    def destroy
      @student.destroy
      respond_to do |format|
        format.html { redirect_to students_url, notice: 'Student was successfully destroyed.' }
        format.json { head :no_content }
      end
    end



  private



    def student_params
      params.require(:student).permit(:name, :course, :portfolio_url, :email, :github_url, :app_name, :app_url, :rationale, :tech_used, :profile_pic_link, :city, :group_project, :bio)
    end
end
