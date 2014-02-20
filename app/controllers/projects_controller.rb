class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  def index
    # @projects = Project.all
    @projects = policy_scope(Project)
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      flash[:notice] = "Project has been created."
      redirect_to @project
    else
    end
  end

  def show
    authorize @project
    @commentable = @project
    @comments = @commentable.comments.where(approved: true)
    @admincomments = @commentable.comments.where(approved: false)
    @comment = Comment.new
  end

  def edit
  end

  def update
    if @project.update_attributes(project_params)
      redirect_to @project, notice: "Project was Successfully Updated."
    else
      render :edit
    end
  end

  def destroy
    @project.destroy
    respond_to do |format|
      format.html { redirect_to projects_path }
      format.json { head :no_content }
    end
  end

  private

  def set_project
    @project = Project.find(params[:id])
  end

  # def project_params
  #   params.require(:project).permit(:name, :technologies_used, :approved)
  # end

  def project_params
    params.require(:project).permit(:name, :technologies_used, :image, :remote_image_url, (:published if ProjectPolicy.new(current_user, @project).publish?))
  end
end
