class ContentsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_content, only: [:show, :edit, :update, :destroy]
  
  def index
    @contents = current_user.contents
  end

  def show; end

  def new
    @content = Content.new
  end

  def create
    @content = current_user.contents.build(content_params)

    if @content.save
      link_tags!
      
      redirect_to contents_path, notice: 'Content sucessfully created!'
    else
      render :new
    end
  end

  def edit; end

  def update
    if @content.update(content_params)
      link_tags!

      redirect_to contents_path, notice: 'Content sucessfully updated!'
    else
      render :edit
    end
  end

  def destroy
    @content.destroy
    
    redirect_to contents_path, notice: 'Content sucessfully destroyed!'
  end
  
  private
  
  def set_content
    @content = Content.find(params[:id])
  end

  def tags_params
    params.require(:content).permit(tags: [])[:tags].reject(&:blank?)
  end

  def content_params
    params.require(:content).permit(:title, :description)
  end

  def link_tags!
    tags = tags_params.map do |tag_name|
      current_user.tags.where(name: tag_name).first_or_initialize
    end

    @content.tags = tags
  end
end
