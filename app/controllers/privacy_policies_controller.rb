class PrivacyPoliciesController < ApplicationController
  def new
    @policy = PrivacyPolicy.new
  end

  def create
  @policy = PrivacyPolicy.new(policy_params)
    if @policy.save
      flash[:success] = "Policy added"
      redirect_to root_path
    else
      flash[:danger] = @policy.errors.full_messages
      render :new
    end
  end

  def show
    @policy = PrivacyPolicy.last
  end

  private
  def policy_params
    params.require(:privacy_policy).permit(:english_title, :arabic_title, :english_text, :arabic_text)
  end
end
