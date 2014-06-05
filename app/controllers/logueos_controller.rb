class LogueosController < ApplicationController
  before_action :set_logueo, only: [:show, :edit, :update, :destroy]

  # GET /logueos
  # GET /logueos.json
  def index
    @logueos = Logueo.all
  end

  # GET /logueos/1
  # GET /logueos/1.json
  def show
  end

  # GET /logueos/new
  def new
    @logueo = Logueo.new
  end

  # GET /logueos/1/edit
  def edit
  end

  # POST /logueos
  # POST /logueos.json
  def create
    @logueo = Logueo.new(logueo_params)

    respond_to do |format|
      if @logueo.save
        format.html { redirect_to @logueo, notice: 'Registro exitoso.' }
        format.json { render :show, status: :created, location: @logueo }
      else
        format.html { render :new }
        format.json { render json: @logueo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /logueos/1
  # PATCH/PUT /logueos/1.json
  def update
    respond_to do |format|
      if @logueo.update(logueo_params)
        format.html { redirect_to @logueo, notice: 'Registro actualizado.' }
        format.json { render :show, status: :ok, location: @logueo }
      else
        format.html { render :edit }
        format.json { render json: @logueo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /logueos/1
  # DELETE /logueos/1.json
  def destroy
    @logueo.destroy
    respond_to do |format|
      format.html { redirect_to logueos_url, notice: 'Registro eliminado.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_logueo
      @logueo = Logueo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def logueo_params
      params.require(:logueo).permit(:usuario, :clave)
    end
end
