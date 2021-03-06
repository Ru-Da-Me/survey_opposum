class SurveysController < ApplicationController
  before_action :set_survey, only: [:show, :edit, :update, :destroy]
  before_action :logged_in
  before_action :can_edit, only: [:edit]

  # GET /surveys
  def index
    @surveys = Survey.where(author_id: session[:user_id])
  end

  # GET /surveys/1
  def show
  end

  # GET /surveys/new
  def new
    @survey = Survey.new(author_id: session[:user_id])
    @survey.questions.build
  end

  # GET /surveys/1/edit
  def edit
    @survey.questions.build
  end

  # POST /surveys
  def create
    @survey = Survey.new(survey_params)

    if @survey.save
      redirect_to @survey, notice: 'Survey was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /surveys/1
  def update
    if @survey.update(survey_params)
      redirect_to @survey, notice: 'Survey was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /surveys/1
  def destroy
    @survey.destroy
    redirect_to surveys_url, notice: 'Survey was successfully destroyed.'
  end


  private
    # Use callbacks to share common setup or constraints between actions.

    private def can_edit
      redirect_to surveys_path, notice: 'Survey cannot be edited once it has submissions.' unless @survey.submissions.count == 0
    end

    def set_survey
      @survey = Survey.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def survey_params
      params.require(:survey).permit(:author_id, :title, :description, :published,
        questions_attributes:[:id, :survey_id, :required, :question_type, :text, :description])
    end
end
