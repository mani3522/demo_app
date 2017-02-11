class StaffSubjectsController < ApplicationController
  before_action :set_staff_subject, only: [:show, :edit, :update, :destroy]

  # GET /staff_subjects
  # GET /staff_subjects.json
  def index
    @staff_subjects = StaffSubject.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @staff_subjects }
    end
  end

  # GET /staff_subjects/1
  # GET /staff_subjects/1.json
  def show
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @staff_subject }
    end
  end

  # GET /staff_subjects/new
  def new
    @staff_subject = StaffSubject.new
  end

  # GET /staff_subjects/1/edit
  def edit
  end

  # POST /staff_subjects
  # POST /staff_subjects.json
  def create
    @staff_subject = StaffSubject.new(staff_subject_params)

    respond_to do |format|
      if @staff_subject.save
        format.html { redirect_to @staff_subject, notice: 'Staff subject was successfully created.' }
        format.json { render json: @staff_subject, status: :created }
      else
        format.html { render action: 'new' }
        format.json { render json: @staff_subject.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /staff_subjects/1
  # PATCH/PUT /staff_subjects/1.json
  def update
    respond_to do |format|
      if @staff_subject.update(staff_subject_params)
        format.html { redirect_to @staff_subject, notice: 'Staff subject was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @staff_subject.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /staff_subjects/1
  # DELETE /staff_subjects/1.json
  def destroy
    @staff_subject.destroy
    respond_to do |format|
      format.html { redirect_to staff_subjects_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_staff_subject
      @staff_subject = StaffSubject.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def staff_subject_params
      params.require(:staff_subject).permit(:staff_id, :subject_id)
    end
end
