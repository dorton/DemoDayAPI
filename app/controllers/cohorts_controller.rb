class CohortsController < ApplicationController
  before_action :set_cohort, only: [:show, :edit, :update, :destroy]

  # GET /cohorts
  # GET /cohorts.json
  def index
    @cohorts = Cohort.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cohorts }
    end
  end

  # GET /cohorts/1
  # GET /cohorts/1.json
  def show
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cohort }
    end
  end

  # GET /cohorts/new
  def new
    @cohort = Cohort.new
  end

  # GET /cohorts/1/edit
  def edit
  end

  # POST /cohorts
  # POST /cohorts.json
  def create
    @cohort = Cohort.new(cohort_params)

      if @cohort.save
        @cohort.update_attributes(slug: "#{@cohort.city.name.downcase.first(3)}_#{@cohort.demo_day_date.strftime('%b%Y').downcase}")
        redirect_to cities_path, notice: 'Cohort was successfully created.'
      else
        render action: 'new'
      end
  end

  # PATCH/PUT /cohorts/1
  # PATCH/PUT /cohorts/1.json
  def update
    respond_to do |format|
      if @cohort.update(cohort_params)
        format.html { redirect_to @cohort, notice: 'Cohort was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @cohort.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cohorts/1
  # DELETE /cohorts/1.json
  def destroy
    @cohort.destroy
    respond_to do |format|
      format.html { redirect_to cohorts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cohort
      @cohort = Cohort.find_by_slug(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cohort_params
      params.require(:cohort).permit(:demo_day_date, :slug, :city_id)
    end
end
