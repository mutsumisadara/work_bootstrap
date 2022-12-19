class BootsController < ApplicationController
  before_action :set_boot, only: %i[ show edit update destroy ]

  # GET /boots or /boots.json
  def index
    @boots = Boot.all
  end

  # GET /boots/1 or /boots/1.json
  def show
  end

  # GET /boots/new
  def new
    @boot = Boot.new
  end

  # GET /boots/1/edit
  def edit
  end

  # POST /boots or /boots.json
  def create
    @boot = Boot.new(boot_params)

    respond_to do |format|
      if @boot.save
        format.html { redirect_to boot_url(@boot), notice: "Boot was successfully created." }
        format.json { render :show, status: :created, location: @boot }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @boot.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /boots/1 or /boots/1.json
  def update
    respond_to do |format|
      if @boot.update(boot_params)
        format.html { redirect_to boot_url(@boot), notice: "Boot was successfully updated." }
        format.json { render :show, status: :ok, location: @boot }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @boot.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /boots/1 or /boots/1.json
  def destroy
    @boot.destroy

    respond_to do |format|
      format.html { redirect_to boots_url, notice: "Boot was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_boot
      @boot = Boot.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def boot_params
      params.require(:boot).permit(:name, :content)
    end
end
