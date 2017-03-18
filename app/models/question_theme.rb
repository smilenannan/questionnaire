class QuestionTheme < ApplicationRecord
  has_many :questions, dependent: :destroy
  
  validates :title, :presence => true, :allow_blank => false
end
