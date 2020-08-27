class CrudpostsController < ApplicationController
  before_action :set_crudpost, only: [:show, :edit, :update, :destroy]

  # GET /crudposts
  # GET /crudposts.json
  def index
    @crudposts = Crudpost.all
  end

  # GET /crudposts/1
  # GET /crudposts/1.json
  def show
  end

  # GET /crudposts/new
  def new
    @crudpost = Crudpost.new
  end

  # GET /crudposts/1/edit
  def edit
  end

  # POST /crudposts
  # POST /crudposts.json
  def create
    @crudpost = Crudpost.new(crudpost_params)

    respond_to do |format|
      if @crudpost.save
        format.html { redirect_to @crudpost, notice: 'Crudpost was successfully created.' }
        format.json { render :show, status: :created, location: @crudpost }
      else
        format.html { render :new }
        format.json { render json: @crudpost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /crudposts/1
  # PATCH/PUT /crudposts/1.json
  def update
    respond_to do |format|
      if @crudpost.update(crudpost_params)
        format.html { redirect_to @crudpost, notice: 'Crudpost was successfully updated.' }
        format.json { render :show, status: :ok, location: @crudpost }
      else
        format.html { render :edit }
        format.json { render json: @crudpost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /crudposts/1
  # DELETE /crudposts/1.json
  def destroy
    @crudpost.destroy
    respond_to do |format|
      format.html { redirect_to crudposts_url, notice: 'Crudpost was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_crudpost
      @crudpost = Crudpost.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def crudpost_params
      params.require(:crudpost).permit(:description, :title)
    end
end
