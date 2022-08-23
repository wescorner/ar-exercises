class Employee < ActiveRecord::Base
  belongs_to :store

  validates_associated :store
  validates :first_name, :last_name, presence: true
  validates :hourly_rate, numericality: { greater_than: 39, less_than: 201 }

  before_create :generate_password

  private
  def generate_password 
    password = (0..8).map { (65 + rand(26)).chr }.join
  end
end
