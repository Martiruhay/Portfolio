class ProjectsController < ApplicationController
  
  def index
    @projects = Project.all.order("created_at desc")
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
  
  
################################################################################
  private
  
  def project_params
    params.require(:project).permit(:title, :description, :link, :slug)
  end
  
  def find_project
    @project = Project.friendly.find(params[:id])
  end
  
end
