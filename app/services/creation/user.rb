module Creation
  class NewUser < ApplicationService
    attr_reader :user_params

    def initialize(user_params)
      @user_params = user_params
    end

    def call
      user = User.new(user_params)
    end
  end
end
