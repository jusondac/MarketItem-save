class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  before_validation :set_default_role
  belongs_to :role

  delegate :name, to: :role, prefix: true

  def set_default_role
    self.role ||= Role.find_by_name('user')
  end
end
