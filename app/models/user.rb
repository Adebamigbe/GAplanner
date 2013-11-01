class User < ActiveRecord::Base

  attr_accessible :dob, :email, :first_name, :image, :last_name, :phone, :role, :password, :password_confirmation
  has_and_belongs_to_many :courses
  # mount_uploader :image, ImageUploader
  has_secure_password
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true

  # validates :role, presence: true

  def role?(r)
    self.role == r.to_s
  end

  def name
    "#{first_name} #{last_name}"
  end


 before_create :set_default_role_if_empty

  def set_default_role_if_empty
    if self.role.nil?
      self.role = "user"
    end
  end

end
