class ActsAsTaggableOnTagsController < ApplicationController
  
  respond_to :html#, :json
  before_action :set_acts_as_taggable_on_tag, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  
  def index
    @acts_as_taggable_on_tags = ActsAsTaggableOn::Tag.all
    respond_with(@acts_as_taggable_on_tags)
  end

  def show
    respond_with(@acts_as_taggable_on_tag)
  end

  def new
    @acts_as_taggable_on_tag = ActsAsTaggableOn::Tag.new
    respond_with(@acts_as_taggable_on_tag)
  end

  def edit
  end

  def create
    @acts_as_taggable_on_tag = ActsAsTaggableOn::Tag.new(acts_as_taggable_on_tag_params)
    @acts_as_taggable_on_tag.save
    respond_with(@acts_as_taggable_on_tag)
  end

  def update
    @acts_as_taggable_on_tag.update(acts_as_taggable_on_tag_params)
    respond_with(@acts_as_taggable_on_tag)
  end

  def destroy
    @acts_as_taggable_on_tag.destroy
    respond_with(@acts_as_taggable_on_tag)
  end

  private
    def set_acts_as_taggable_on_tag
      @acts_as_taggable_on_tag = ActsAsTaggableOn::Tag.find(params[:id])
    end

    def acts_as_taggable_on_tag_params
      params.require(:acts_as_taggable_on_tag).permit(:name)
    end
end
