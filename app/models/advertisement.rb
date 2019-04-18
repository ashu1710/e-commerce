class Advertisement < ApplicationRecord
  
  #relationship
  belongs_to :user

  has_one_attached :image

  #validation
  validate :end_date_must_afer_start_date
  validates :start_date, :end_date, presence: true


  private

  def end_date_must_afer_start_date
    if end_date < start_date
      errors.add(:end_date, "must be after the start date") 
    end 
  end
end
