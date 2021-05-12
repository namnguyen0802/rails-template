# frozen_string_literal: true

class Users::Auths::RegistrationsController < Devise::RegistrationsController
  before_action :sign_up_params, only: [:create]

  # before_action :configure_sign_up_params, only: [:create]
  # before_action :configure_account_update_params, only: [:update]

  # GET /resource/sign_up
  def new
    super
  end

  # POST /resource
  def create
    super
    # @user = User.find_by_email(sign_up_params[:email])
    # if !!@user
    #   if @user.rejected?
    #     redirect_to users_popups_registration_unsuccessful_path and return
    #   elsif @user.approved?
    #     handle_new_user
    #   elsif @user.kyc_success? && @user.document_success? && (@user.verified? || @user.verifying?)
    #     redirect_to users_popups_success_document_path
    #   elsif @user.kyc_success? && @user.document_success? && (@user.approved? || @user.rejected?)
    #     super
    #   elsif @user.email_confirm?
    #     sign_in(@user)
    #     redirect_to users_popups_email_verified_path and return
    #   elsif @user.email_pending?
    #     session[:user_email] = sign_up_params[:email]
    #     # sign_in(@user)
    #     redirect_to users_popups_email_verification_path and return
    #   #check user pass or not pass aml
    #   elsif @user.aml_no_match?
    #     sign_in(@user)
    #     redirect_to users_kyc_index_path(token: @user.confirmation_token)
    #   end
    # else
    #   handle_new_user
    # end
    #check email already and email confirm verify
    # @user = User.find_by_email(sign_up_params[:email])
    # if @user.present?
    #   handle_user_existed(@user)
    # else
    #   handle_new_user
    # end
  end

  # GET /resource/edit
  # def edit
  #   super
  # end

  # PUT /resource
  # def update
  #   super
  # end

  # DELETE /resource
  # def destroy
  #   super
  # end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_up_params
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [:attribute])
  # end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_account_update_params
  #   devise_parameter_sanitizer.permit(:account_update, keys: [:attribute])
  # end

  # The path used after sign up.
  # def after_sign_up_path_for(resource)
  #   #super(resource)
  #   redirect_to users_popups_email_verification_path
  # end

  # The path used after sign up for inactive accounts.

  def after_inactive_sign_up_path_for(resource)
    super(resource)
    # users_popups_email_verification_path
  end

  private

  def handle_user_existed(user)
  end

  def handle_new_user
    @user = User.new(sign_up_params.merge(password: "Kryptos-X.2018"))
    if verify_recaptcha(model: @user) && @user.save
      session[:user_email] = sign_up_params[:email]
      redirect_to users_popups_email_verification_path
    else
      render :new
    end
  end

  def sign_up_params
    params.require(:user).permit(:email, :terms_and_conditions, :country_of_residence)
  end
end
