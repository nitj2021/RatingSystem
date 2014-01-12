class Vendor::ParameterSanitizer < Devise::ParameterSanitizer
  def sign_up
    default_params.permit(:name, :email, :password, 
    	:business_type, :description, :password_confirmation)
  end
end