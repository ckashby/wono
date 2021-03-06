class JobRequestsController < ApplicationController
  before_action :set_job_request, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /job_requests
  # GET /job_requests.json
  def index
    @job_requests = JobRequest.all.order(:day)
  end

  # GET /job_requests/1
  # GET /job_requests/1.json
  def show
  end

  # GET /job_requests/new
  def new
    @job_request = JobRequest.new
  end

  # GET /job_requests/1/edit
  def edit
  end

  # POST /job_requests
  # POST /job_requests.json
  def create
    @job_request = JobRequest.new(job_request_params)
    @job_request.user_id = current_user.id

    respond_to do |format|
      if @job_request.save
        format.html { redirect_to @job_request, notice: 'Job request was successfully created.' }
        format.json { render :show, status: :created, location: @job_request }
      else
        format.html { render :new }
        format.json { render json: @job_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /job_requests/1
  # PATCH/PUT /job_requests/1.json
  def update
    respond_to do |format|
      if @job_request.update(job_request_params)
        format.html { redirect_to @job_request, notice: 'Job request was successfully updated.' }
        format.json { render :show, status: :ok, location: @job_request }
      else
        format.html { render :edit }
        format.json { render json: @job_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /job_requests/1
  # DELETE /job_requests/1.json
  def destroy
    @job_request.destroy
    respond_to do |format|
      format.html { redirect_to job_requests_url, notice: 'Job request was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_job_request
      @job_request = JobRequest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def job_request_params
      params.require(:job_request).permit(:title, :day, :desc, :time, :user_id)
    end
end
