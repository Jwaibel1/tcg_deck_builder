class User < ApplicationRecord
    validates :username, presence: true, uniqueness: true, length: {minimum: 3 maximum: 30}
    validate :validate_username
    validates :email, presence: true, format: {URI::MailTo::EMAIL_REGEXP}

    # associations
    has_many :deck_lists

    private
    def validate_username
        unless :username =~ /\A[a-zA-Z0-9_]+\Z/
            errors.add(:username, "Username can only contain letters, numbers, and underscores, and must have at least one letter or number")
        end
    end
end
