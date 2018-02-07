class TopictsController < ApplicationController
  before_action :set_topict, only: [:show, :edit, :update, :destroy]

  # GET /topicts
  # GET /topicts.json
  def index
    @topicts = Topict.all
  end

  # GET /topicts/1
  # GET /topicts/1.json
  def show
  end

  # GET /topicts/new
  def new
    @topict = Topict.new
  end

  # GET /topicts/1/edit
  def edit
  end

  # POST /topicts
  # POST /topicts.json
  def create
    @topict = Topict.new(topict_params)

    respond_to do |format|
      if @topict.save
        format.html { redirect_to @topict, notice: 'Topict was successfully created.' }
        format.json { render :show, status: :created, location: @topict }
      else
        format.html { render :new }
        format.json { render json: @topict.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /topicts/1
  # PATCH/PUT /topicts/1.json
  def update
    respond_to do |format|
      if @topict.update(topict_params)
        format.html { redirect_to @topict, notice: 'Topict was successfully updated.' }
        format.json { render :show, status: :ok, location: @topict }
      else
        format.html { render :edit }
        format.json { render json: @topict.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /topicts/1
  # DELETE /topicts/1.json
  def destroy
    @topict.destroy
    respond_to do |format|
      format.html { redirect_to topicts_url, notice: 'Topict was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_topict
      @topict = Topict.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def topict_params
      params.require(:topict).permit(:itle, :student_id, :course_id)
    end
end
