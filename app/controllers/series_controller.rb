class SeriesController < ApplicationController
  before_action :set_serie, only: [:show, :edit, :update, :destroy]
  before_action :set_related, only: [:create, :update]

  # GET /series
  # GET /series.json
  def index
    if params[:q].present?
      params[:q][:name_start] = "" if params[:q][:name_start] == "0"
      params[:q][:state_id_eq] = "" if params[:q][:state_id_eq] == "0"
      params[:q][:serie_type_id_eq] = "" if params[:q][:serie_type_id_eq] == "0"
    end

    @q = Serie.ransack(params[:q])
    @series = @q.result(distinct: true)
  end

  # GET /series/1
  # GET /series/1.json
  def show
  end

  # GET /series/new
  def new
    @serie = Serie.new
  end

  # GET /series/1/edit
  def edit
  end

  # POST /series
  # POST /series.json
  def create
    @serie = Serie.new(serie_params)

    respond_to do |format|
      if @serie.save
        format.html { redirect_to @serie, notice: 'Serie was successfully created.' }
        format.json { render :show, status: :created, location: @serie }
      else
        format.html { render :new }
        format.json { render json: @serie.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /series/1
  # PATCH/PUT /series/1.json
  def update
    respond_to do |format|
      if @serie.update(serie_params)
        format.html { redirect_to @serie, notice: 'Serie was successfully updated.' }
        format.json { render :show, status: :ok, location: @serie }
      else
        format.html { render :edit }
        format.json { render json: @serie.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /series/1
  # DELETE /series/1.json
  def destroy
    @serie.destroy
    respond_to do |format|
      format.html { redirect_to series_url, notice: 'Serie was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def filter_series
    series = Serie.filter_index(params[:selectWithLetter],
                                params[:selectWithType],
                                params[:selectWithState])
    render(json: series)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_serie
      @serie = Serie.find(params[:id])
    end

    def set_related
      params[:serie][:prequel_id] = nil if params[:serie][:prequel_id] == "0"
      params[:serie][:sequel_id] = nil if params[:serie][:sequel_id] == "0"
    end

    # Only allow a list of trusted parameters through.
    def serie_params
      params.require(:serie)
        .permit(:selectWithLetter, :selectWithType, :selectWithType, :name, :cover_page, :prequel_id, :sequel_id,
                :cover_page_image, episodes_attributes: [:id, :number, :duration, :name, :aired, :_destroy])
    end
end
