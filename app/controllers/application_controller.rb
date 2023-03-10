class ApplicationController < ActionController::API
    include ActionController::Cookies
    rescue_from ActiveRecord::RecordInvalid, with: :unprocessable_entity_response
         before_action :authorize
    
        def unprocessable_entity_response(exception)
            render json: {errors: exception.record.errors.full_messages}, status: :unprocessable_entity
        end
    
        private
    
    
        def authorize
            return render json: {error: 'Not Authorized'}, status: :unauthorized unless session.include? :user_id
        end
end