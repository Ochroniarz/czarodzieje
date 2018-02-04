class PostacsController < ApplicationController
  before_action :set_postac, only: [:show, :edit, :update, :destroy]

  # GET /postacs
  # GET /postacs.json
  def index
    @postacs = Postac.all
  end

  # GET /postacs/1
  # GET /postacs/1.json
  def show
  end

  # GET /postacs/new
  def new
    @postac = Postac.new
  end

  # GET /postacs/1/edit
  def edit
  end

  # POST /postacs
  # POST /postacs.json
  def create
    @postac = Postac.new(postac_params)

    respond_to do |format|
      if @postac.save
        format.html { redirect_to @postac, notice: 'Postac was successfully created.' }
        format.json { render :show, status: :created, location: @postac }
      else
        format.html { render :new }
        format.json { render json: @postac.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /postacs/1
  # PATCH/PUT /postacs/1.json
  def update
    respond_to do |format|
      if @postac.update(postac_params)
        format.html { redirect_to @postac, notice: 'Postac was successfully updated.' }
        format.json { render :show, status: :ok, location: @postac }
      else
        format.html { render :edit }
        format.json { render json: @postac.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /postacs/1
  # DELETE /postacs/1.json
  def destroy
    @postac.destroy
    respond_to do |format|
      format.html { redirect_to postacs_url, notice: 'Postac was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_postac
      @postac = Postac.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def postac_params
      params.require(:postac).permit(:name, :lvl, :maglvl, :atk, :def, :magic, :speed, :klasa_id)
    end
end
