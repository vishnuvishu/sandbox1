class VishnusController < ApplicationController
  before_action :set_vishnu, only: [:show, :edit, :update, :destroy]

  # GET /vishnus
  # GET /vishnus.json
  def index
    @vishnus = Vishnu.all
  end

  # GET /vishnus/1
  # GET /vishnus/1.json
  def show
  end

  # GET /vishnus/new
  def new
    @vishnu = Vishnu.new
  end

  # GET /vishnus/1/edit
  def edit
  end

  # POST /vishnus
  # POST /vishnus.json
  def create
    @vishnu = Vishnu.new(vishnu_params)

    respond_to do |format|
      if @vishnu.save
        format.html { redirect_to @vishnu, notice: 'Vishnu was successfully created.' }
        format.json { render :show, status: :created, location: @vishnu }
      else
        format.html { render :new }
        format.json { render json: @vishnu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vishnus/1
  # PATCH/PUT /vishnus/1.json
  def update
    respond_to do |format|
      if @vishnu.update(vishnu_params)
        format.html { redirect_to @vishnu, notice: 'Vishnu was successfully updated.' }
        format.json { render :show, status: :ok, location: @vishnu }
      else
        format.html { render :edit }
        format.json { render json: @vishnu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vishnus/1
  # DELETE /vishnus/1.json
  def destroy
    @vishnu.destroy
    respond_to do |format|
      format.html { redirect_to vishnus_url, notice: 'Vishnu was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vishnu
      @vishnu = Vishnu.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vishnu_params
      params.require(:vishnu).permit(:name, :designation, :company)
    end
end
