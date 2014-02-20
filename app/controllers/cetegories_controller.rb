class CetegoriesController < ApplicationController
  before_action :set_cetegory, only: [:show, :edit, :update, :destroy]

  # GET /cetegories
  # GET /cetegories.json
  def index
    @cetegories = Cetegory.all
  end

  # GET /cetegories/1
  # GET /cetegories/1.json
  def show
  end

  # GET /cetegories/new
  def new
    @cetegory = Cetegory.new
  end

  # GET /cetegories/1/edit
  def edit
  end

  # POST /cetegories
  # POST /cetegories.json
  def create
    @cetegory = Cetegory.new(cetegory_params)

    respond_to do |format|
      if @cetegory.save
        format.html { redirect_to @cetegory, notice: 'Cetegory was successfully created.' }
        format.json { render action: 'show', status: :created, location: @cetegory }
      else
        format.html { render action: 'new' }
        format.json { render json: @cetegory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cetegories/1
  # PATCH/PUT /cetegories/1.json
  def update
    respond_to do |format|
      if @cetegory.update(cetegory_params)
        format.html { redirect_to @cetegory, notice: 'Cetegory was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @cetegory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cetegories/1
  # DELETE /cetegories/1.json
  def destroy
    @cetegory.destroy
    respond_to do |format|
      format.html { redirect_to cetegories_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cetegory
      @cetegory = Cetegory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cetegory_params
      params.require(:cetegory).permit(:name, :catID, :parentCatID, :isRoot)
    end
end
