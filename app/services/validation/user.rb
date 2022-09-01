module Validation
  class User < ApplicationService
    attr_reader :user

    REQUIRED_FIELDS = {
      birth_date: 'Birth Date',
      display_name: 'Display Name',
      email: 'Email',
      password_digest: 'Password',
    }.freeze

    # validates :birth_date,
    # comparison: {
    #   less_than_or_equal_to: 18.years.ago,
    #   message: :too_young,
    # }

    def initialize(user)
      @user = user
    end

    def call
      REQUIRED_FIELDS.each do |field, label|
        # binding.pry if field == :display_name
        add_missing_field_error(label) if user.send(field).blank?
      end

      binding.pry
      true
    end

    private

    def add_missing_field_error(field)
      user.errors.add('', I18n.t(:add_missing_field, field))
      false
    end

    def birth_date_valid?
      # binding.pry
      true
    end
  end
end
