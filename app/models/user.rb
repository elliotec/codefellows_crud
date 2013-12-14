class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

<<<<<<< HEAD
  validates_presence_of :firstname
=======
  attr_accessor :login

  validates_presence_of :firstname

  validates :firstname,
  :uniqueness => {
    :case_sensitive => false
  }

      def self.find_first_by_auth_conditions(warden_conditions)
      conditions = warden_conditions.dup
      if login = conditions.delete(:login)
        where(conditions).where(["lower(firstname) = :value OR lower(email) = :value", { :value => login.downcase }]).first
      else
        where(conditions).first
      end
    end
>>>>>>> 7f8ae03e598b85fc18c666766eeab6369b5cc179
end
