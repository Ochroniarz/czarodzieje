class KlasasController < ApplicationController
  before_action :set_klasa, only: [:show, :edit, :update, :destroy]

  # GET /klasas
  # GET /klasas.json
  def index
    @klasas = Klasa.all
  end

  # GET /klasas/1
  # GET /klasas/1.json
  def show
  end

  # GET /klasas/new
  def new
    @klasa = Klasa.new
  end

  # GET /klasas/1/edit
  def edit
  end

  # POST /klasas
  # POST /klasas.json
  def create
    @klasa = Klasa.new(klasa_params)

    respond_to do |format|
      if @klasa.save
        format.html { redirect_to @klasa, notice: 'Klasa was successfully created.' }
        format.json { render :show, status: :created, location: @klasa }
      else
        format.html { render :new }
        format.json { render json: @klasa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /klasas/1
  # PATCH/PUT /klasas/1.json
  def update
    respond_to do |format|
      if @klasa.update(klasa_params)
        format.html { redirect_to @klasa, notice: 'Klasa was successfully updated.' }
        format.json { render :show, status: :ok, location: @klasa }
      else
        format.html { render :edit }
        format.json { render json: @klasa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /klasas/1
  # DELETE /klasas/1.json
  def destroy
    @klasa.destroy
    respond_to do |format|
      format.html { redirect_to klasas_url, notice: 'Klasa was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_klasa
      @klasa = Klasa.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def klasa_params
      params.require(:klasa).permit(:name, :description, :specialatk)
    end
end
