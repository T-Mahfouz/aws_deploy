class TermsAndConditionsController < ApplicationController
  def new
    @term = TermsAndCondition.new
  end

  def create
    @term = TermsAndCondition.new(policy_params)
    if @term.save
      flash[:success] = "Term added"
      redirect_to root_path
    else
      flash[:danger] = @term.errors.full_messages
      render :new
    end
  end

  def show
    @terms = TermsAndCondition.last
  end

  private
  def term_params
    params.require(:terms_and_condition).permit(:english_title, :arabic_title, :english_text, :arabic_text)
  end

end
