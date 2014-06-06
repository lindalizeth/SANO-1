class RegistrarSalidasController < ApplicationController
  before_action :set_registrar_salida, only: [:show, :edit, :update, :destroy]

  # GET /registrar_salidas
  # GET /registrar_salidas.json
  def index
    @registrar_salidas = RegistrarSalida.all
  end

  # GET /registrar_salidas/1
  # GET /registrar_salidas/1.json
  def show
  end

  # GET /registrar_salidas/new
  def new
    @registrar_salida = RegistrarSalida.new
  end

  # GET /registrar_salidas/1/edit
  def edit
  end

  # POST /registrar_salidas
  # POST /registrar_salidas.json
  def create
    @registrar_salida = RegistrarSalida.new(registrar_salida_params)

    respond_to do |format|
      if @registrar_salida.save
        format.html { redirect_to @registrar_salida, notice: 'Registrar salida  ha sido registrado correctamente!.' }
        format.json { render :show, status: :created, location: @registrar_salida }
      else
        format.html { render :new }
        format.json { render json: @registrar_salida.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /registrar_salidas/1
  # PATCH/PUT /registrar_salidas/1.json
  def update
    respond_to do |format|
      if @registrar_salida.update(registrar_salida_params)
        format.html { redirect_to @registrar_salida, notice: 'Registrar salida fue actualizada con exito!.' }
        format.json { render :show, status: :ok, location: @registrar_salida }
      else
        format.html { render :edit }
        format.json { render json: @registrar_salida.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /registrar_salidas/1
  # DELETE /registrar_salidas/1.json
  def destroy
    @registrar_salida.destroy
    respond_to do |format|
      format.html { redirect_to registrar_salidas_url, notice: 'El registro salida ha sido eliminado con exito!.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_registrar_salida
      @registrar_salida = RegistrarSalida.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def registrar_salida_params
      params.require(:registrar_salida).permit(:Selccione_fecha, :lugarSalida, :FuncionarioACargo, :fichaGrupo, :tipoSalida_pedagogico, :Recreativo, :Otro, :digacual)
    end
end
