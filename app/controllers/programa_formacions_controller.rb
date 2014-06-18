class ProgramaFormacionsController < ApplicationController
  before_action :set_programa_formacion, only: [:show, :edit, :update, :destroy]

  # GET /programa_formacions
  # GET /programa_formacions.json
  def index
    @programa_formacions = ProgramaFormacion.all
  end

  # GET /programa_formacions/1
  # GET /programa_formacions/1.json
  def show
  end

  # GET /programa_formacions/new
  def new
    @programa_formacion = ProgramaFormacion.new
  end

  # GET /programa_formacions/1/edit
  def edit
  end

  # POST /programa_formacions
  # POST /programa_formacions.json
  def create
    @programa_formacion = ProgramaFormacion.new(programa_formacion_params)

    respond_to do |format|
      if @programa_formacion.save
        format.html { redirect_to @programa_formacion, notice: 'Programa formacion was successfully created.' }
        format.json { render :show, status: :created, location: @programa_formacion }
      else
        format.html { render :new }
        format.json { render json: @programa_formacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /programa_formacions/1
  # PATCH/PUT /programa_formacions/1.json
  def update
    respond_to do |format|
      if @programa_formacion.update(programa_formacion_params)
        format.html { redirect_to @programa_formacion, notice: 'Programa formacion was successfully updated.' }
        format.json { render :show, status: :ok, location: @programa_formacion }
      else
        format.html { render :edit }
        format.json { render json: @programa_formacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /programa_formacions/1
  # DELETE /programa_formacions/1.json
  def destroy
    @programa_formacion.destroy
    respond_to do |format|
      format.html { redirect_to programa_formacions_url, notice: 'Programa formacion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_programa_formacion
      @programa_formacion = ProgramaFormacion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def programa_formacion_params
      params.require(:programa_formacion).permit(:nombre)
    end
end
