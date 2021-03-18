class ProjectPhasesController < ApplicationController
  before_action :set_project_phase, only: %i[ show edit update destroy ]

  # GET /project_phases or /project_phases.json
  def index
    @project_phases = ProjectPhase.all
  end

  # GET /project_phases/1 or /project_phases/1.json
  def show
  end

  # GET /project_phases/new
  def new
    @project_phase = ProjectPhase.new
    @project = Project.find(params[:project_id])
  end

  # GET /project_phases/1/edit
  def edit
  end

  # POST /project_phases or /project_phases.json
  def create
    @project_phase = ProjectPhase.new(project_phase_params)
    @project = Project.find(params[:project_id])
    @project_phase.project_id = @project.id
    respond_to do |format|
      if @project_phase.save
        format.html { redirect_to project_project_phase_path(@project, @project_phase), notice: "Project phase was successfully created." }
        format.json { render :show, status: :created, location: @project_phase }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @project_phase.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /project_phases/1 or /project_phases/1.json
  def update
    respond_to do |format|
      if @project_phase.update(project_phase_params)
        format.html { redirect_to project_project_phase_path(@project, @project_phase)}
        format.json { render :show, status: :ok, location: @project_phase }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @project_phase.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /project_phases/1 or /project_phases/1.json
  def destroy
    @project_phase.destroy
    respond_to do |format|
      format.html { redirect_to project_phases_url, notice: "Project phase was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project_phase
      @project = Project.find(params[:project_id])
      @project_phase = ProjectPhase.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def project_phase_params
      params.require(:project_phase).permit(:job_title, :price, :timeframe, :project_id)
    end
end
