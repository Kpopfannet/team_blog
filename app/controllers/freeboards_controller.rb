class FreeboardsController < ApplicationController
  before_action :set_freeboard, only: [:show, :edit, :update, :destroy]

  # GET /freeboards
  # GET /freeboards.json
  def index
    @freeboards = Freeboard.all
  end

  # GET /freeboards/1
  # GET /freeboards/1.json
  def show
  end

  # GET /freeboards/new
  def new
    @freeboard = Freeboard.new
  end

  # GET /freeboards/1/edit
  def edit
  end

  # POST /freeboards
  # POST /freeboards.json
  def create
    @freeboard = Freeboard.new(freeboard_params)

    respond_to do |format|
      if @freeboard.save
        format.html { redirect_to @freeboard, notice: 'Freeboard was successfully created.' }
        format.json { render :show, status: :created, location: @freeboard }
      else
        format.html { render :new }
        format.json { render json: @freeboard.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /freeboards/1
  # PATCH/PUT /freeboards/1.json
  def update
    respond_to do |format|
      if @freeboard.update(freeboard_params)
        format.html { redirect_to @freeboard, notice: 'Freeboard was successfully updated.' }
        format.json { render :show, status: :ok, location: @freeboard }
      else
        format.html { render :edit }
        format.json { render json: @freeboard.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /freeboards/1
  # DELETE /freeboards/1.json
  def destroy
    @freeboard.destroy
    respond_to do |format|
      format.html { redirect_to freeboards_url, notice: 'Freeboard was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_freeboard
      @freeboard = Freeboard.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def freeboard_params
      params.fetch(:freeboard, {}).permit(:content)
    end
end
