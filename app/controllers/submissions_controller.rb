class SubmissionsController < ApplicationController
  before_action :set_submission, only: [:show, :edit, :update, :destroy]

  # GET /submissions
  def index
    @submissions = Submission.where(survey_id: params[:survey_id])
    @survey = Survey.find(params[:survey_id])
  end

  # GET /submissions/1
  def show
  end

  # GET /submissions/new
  def new
    @submission = Submission.new(survey_id: params[:survey_id])
    @survey = Survey.find(params[:survey_id])
    questions = Question.where(survey_id: @survey.id)
    questions.each do |q|
      @submission.answers.build(question: q)
    end
  end

  # POST /submissions
  def create
    @submission = Submission.new(submission_params)
    #@submission.answers.build (for each (loop??) answer in a submission form and pass it the question_id associated with it)

    if @submission.save
      redirect_to @submission, notice: 'Submission was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /submissions/1
  def update
    if @submission.update(submission_params)
      redirect_to @submission, notice: 'Submission was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /submissions/1
  def destroy
    @submission.destroy
    redirect_to submissions_url, notice: 'Submission was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_submission
      @submission = Submission.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def submission_params
      params.require(:submission).permit(:survey_id,
      answers_attributes:[:id, :question_id, :submission_id, :answer_text])
    end
end
