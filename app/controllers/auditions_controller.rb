class AuditionsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_audition, only: [:show, :edit, :update, :destroy]
  before_action :log_impression, only: [:show]
 
  def log_impression
      @hit_post = Audition.find(params[:id])
      # this assumes you have a current_user method in your authentication system
      @hit_post.impressions.create(ip_address: request.remote_ip,user_id:current_user.id)
  end


  # GET /auditions
  # GET /auditions.json
  def index
    @auditions = Audition.all
  end

  # GET /auditions/1
  # GET /auditions/1.json
  def show
  end

  # GET /auditions/new
  def new
    @audition = Audition.new
  end

  # GET /auditions/1/edit
  def edit
  end

  # POST /auditions
  # POST /auditions.json
  def create
    @audition = Audition.new(audition_params)
    @audition.user_id = current_user.id
    respond_to do |format|
      if @audition.save
        format.html { redirect_to @audition, notice: 'Audition was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /auditions/1
  # PATCH/PUT /auditions/1.json
  def update
    respond_to do |format|
      if @audition.update(audition_params)
        format.html { redirect_to @audition, notice: 'Audition was successfully updated.' }
        format.json { render :show, status: :ok, location: @audition }
      else
        format.html { render :edit }
        format.json { render json: @audition.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /auditions/1
  # DELETE /auditions/1.json
  def destroy
    @audition.destroy
    respond_to do |format|
      format.html { redirect_to '/audition', notice: 'Audition was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_audition
      @audition = Audition.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def audition_params
      params.require(:audition).permit(:title, :content)
    end
end