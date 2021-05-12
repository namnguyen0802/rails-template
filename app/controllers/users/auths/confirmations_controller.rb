# frozen_string_literal: true

class Users::Auths::ConfirmationsController < Devise::ConfirmationsController
  # GET /resource/confirmation/new
  # def new
  #   super
  # end

  # POST /resource/confirmation
  def create
    if current_user.present?
      redirect_to users_popups_email_verified_path
    else
      super
    end
  end

  # GET /resource/confirmation?confirmation_token=abcdef
  def show
    token = User.find_by_confirmation_token(params[:confirmation_token])
    if token.present?
      token.confirm
      token.email_confirm!
      sign_in(token)

      redirect_to users_popups_email_verified_path
    else
      super
    end
  end

  # protected

  # The path used after resending confirmation instructions.
  # def after_resending_confirmation_instructions_path_for(resource_name)
  #   super(resource_name)
  # end

  # The path used after confirmation.
  protected

  def after_confirmation_path_for(resource_name, resource)
    sign_in(resource)
    resource.email_confirm!
    users_popups_email_verified_path
  end

  def after_resending_confirmation_instructions_path_for(resource_name)
    users_popups_email_verification_path
  end

end
