class WorksController < ApplicationController

  before_action :find_work, only: [:show, :edit, :update, :destroy]

  def index
  end

  def new
    @work = Work.new
  end

  def create
    @work = Work.new work_params
    if @work.save
      redirect_to @work, notice: "Work experience has been saved!!!"
    else
      render 'new', notice: "Work experience has not been saved!!!"
    end
  end

  def show
  end

  def edit
  end

  def update
    if @work.update work_params
      redirect_to @work, notice: "Work experience has been updated!!!"
    else
      render 'edit'
    end
  end

  def destroy
    @work.destroy
    redirect_to works_path
  end

  private
    def work_params
      params.require(:work).permit(:title, :content, :link)
    end

    def find_work
      @work = Work.find(params[:id])
    end
end
