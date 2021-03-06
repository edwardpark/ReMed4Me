class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :medications, dependent: :destroy
  # mms: has_many :reminders, through: :medications # seems more appropriate and removes many of the workarounds
  has_many :reminders
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100#" }, :default_url => "/images/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

end
