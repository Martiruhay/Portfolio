class ProjectsController < ApplicationController
  include ApplicationHelper
  
  before_action :check_admin, except: [:index, :show]
  
  def index
    @projects = Project.all.order("created_at desc").paginate(page: params[:page], per_page: 7)
  end
  
  def new
    @project = Project.new
  end
  
  def create
    @project = Project.new project_params
    
    if @project.save
      redirect_to @project, notice: "Project created succesfully!"
    else
      render 'new'
    end
  end
  
  def show
    find_project
  end
  
  def edit
    find_project
  end
  
  def update
    find_project
    if @project.update project_params
      redirect_to @project, notice: "Project updated successfully!"
    else
      render 'edit'
    end
  end
  
  def destroy
    find_project
    @project.destroy
    redirect_to projects_path
  end
  
  
################################################################################
  private
  
  def project_params
    params.require(:project).permit(:title, :description, :link, :image, :slug)
  end
  
  def find_project
    @project = Project.friendly.find(params[:id])
  end
  
end
