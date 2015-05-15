class Doctor < ActiveRecord::Base
  has_secure_password
  has_many :patients, dependent: :destroy

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: {case_sensitive: false}

  def full_name
    "#{first_name} #{last_name}"
  end

end
