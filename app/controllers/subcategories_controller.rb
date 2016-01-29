class SubcategoriesController < ApplicationController
  before_action :set_subcategory, only: [:show, :edit, :update, :destroy]

  def index
    @subcategories = Subcategory.all
  end

  def show
    # @listings = Listing.where(subcategory_id: params[:id]).order("created_at DESC").paginate(:page => params[:page], :per_page => 10)
    @category = Category.find(params[:category_id])
    @subcategory = Subcategory.find(params[:id])
  end
  
  def find_by_category
    category = Category.find(params[:category_id])
    subcategories = category.subcategories.find_all
    render json: { subcategories: subcategories }
  end
  
  def state_category
    category = Category.find(params[:category_id])
  end

  def new
    @subcategory = Subcategory.new
  end

  def edit
  end

  def create
    @subcategory = Subcategory.new(subcategory_params)

    respond_to do |format|
      if @subcategory.save
        format.html { redirect_to @subcategory, notice: 'Subcategory was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @subcategory.update(subcategory_params)
        format.html { redirect_to @subcategory, notice: 'Subcategory was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @subcategory.destroy
    respond_to do |format|
      format.html { redirect_to subcategories_url, notice: 'Subcategory was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def set_subcategory
      @subcategory = Subcategory.find(params[:id])
    end

    def subcategory_params
      params.require(:subcategory).permit(:name, :description, :slug, :category_id)
    end
end


  def show
    @listings = Listing.where(subcategory_id: params[:id]).order("created_at DESC").paginate(:page => params[:page], :per_page => 10)
    @category = Category.find(params[:category_id])
    @subcategory = Subcategory.find(params[:id])
  end
  
  def find_by_category
    category = Category.find(params[:category_id])
    subcategories = category.subcategories.find_all
    render json: { subcategories: subcategories }
  end
  
  def state_category
    category = Category.find(params[:category_id])
  end
  

