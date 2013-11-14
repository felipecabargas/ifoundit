class ReportsController < ApplicationController 
  http_basic_authenticate_with :name => "camilinda", :password => "caquita1234", :only => [:index]
  before_filter :authenticate_user!
  before_action :set_report, only: [:show, :edit, :update, :destroy]

  # GET /reports
  # GET /reports.json
  def index
    @reports = Report.all
    @json = Report.all.to_gmaps4rails
  end

  # GET /reports/1
  # GET /reports/1.json
  def show
    @json = Report.find(params[:id]).to_gmaps4rails
  end

  # GET /reports/new
  def new
    @report = Report.new
  end

  # GET /reports/1/edit
  def edit
  end

  # POST /reports
  # POST /reports.json
  def create
    @report = Report.new(report_params)
    @user = current_user.id
    
    respond_to do |format|
      if @report.save
        # format.html { redirect_to @report, notice: 'Report was successfully created.' }
        format.json# { render action: 'show', status: :created, location: @report }
      else
        format.html { render action: 'new' }
        format.json { render json: @report.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reports/1
  # PATCH/PUT /reports/1.json
  def update
    respond_to do |format|
      if @report.update(report_params)
        format.html { redirect_to @report, notice: 'Report was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @report.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reports/1
  # DELETE /reports/1.json
  def destroy
    @report.destroy
    respond_to do |format|
      format.html { redirect_to reports_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_report
      @report = Report.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def report_params
      params.require(:report).permit(:image, :status, :item_type, :description, :age, :size, :height, :contexture, :raza, :colors, :skin, :medical, :med_detail, :sex, :address, :latitude, :longitude, :gmaps)
    end
end
