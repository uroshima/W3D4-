# == Schema Information
#
# Table name: responses
#
#  id               :bigint(8)        not null, primary key
#  answer_choice_id :integer          not null
#  author_id        :integer          not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Response < ApplicationRecord
  validates :answer_choice_id, :author_id, presence: true, uniqueness: true

  def sibling_responses 
    
  end 
  
  belongs_to :answer_choice, 
    primary_key: :id, 
    foreign_key: :answer_choice_id,
    class_name: :AnswerChoice
    
  belongs_to :respondent,
    primary_key: :id,
    foreign_key: :author_id,
    class_name: :User
    
  has_one :question, 
    through: :answer_choice,
    source: :questions
end 
