class ExperiencesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_experience, only: [:show, :edit, :update, :destroy]

  def index

    if experience_params[:category].present? || experience_params[:address].present?
      @category = Category.where("name = ?", experience_params[:category]).first
      @location = experience_params[:address]
      @experiences = Experience.where("category_id = ? AND location = ?", @category.id, @location)
      @start = experience_params[:start]
      @finish = experience_params[:finish]
    else
      @experiences = Experience.all
    end

  end

  def show
    @experience = Experience.find(params[:id])
    @bookings = Booking.where(experience_id: @experience)
    # @markers = @bookings.map do |book|
    #   {
    #     lng: book.experience.longitude,
    #     lat: book.experience.latitude,
    #     infoWindow: { content: render_to_string(partial: "/shared/map_window", locals: { experience: @experience })}
    #   }
    # end
    @markers = [
      {
        lng: @experience.longitude,
        lat: @experience.latitude,
        infoWindow: { content: render_to_string(partial: "/shared/map_window", locals: { experience: @experience })}
      }]

  end

  def new
    @experience = Experience.new
  end

  def edit
  end

  def create
    @experience = Experience.new(experience_params)

    respond_to do |format|
      if @experience.save
        format.html { redirect_to @experience, notice: 'Experience was successfully created.' }
        format.json { render :show, status: :created, location: @experience }
      else
        format.html { render :new }
        format.json { render json: @experience.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @experience.update(experience_params)
        format.html { redirect_to @experience, notice: 'Experience was successfully updated.' }
        format.json { render :show, status: :ok, location: @experience }
      else
        format.html { render :edit }
        format.json { render json: @experience.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @experience.destroy
    respond_to do |format|
      format.html { redirect_to experiences_url, notice: 'Experience was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_experience
      @experience = Experience.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.

    def experience_params
      params.require(:experience).permit(:category, :address, :start, :finish)
    end

end
