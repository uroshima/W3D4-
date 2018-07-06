# == Schema Information
#
# Table name: polls
#
#  id      :bigint(8)        not null, primary key
#  user_id :integer          not null
#  title   :string           not null
#

class Poll < ApplicationRecord
  belongs_to :user,
    primary_key: :id,
    foreign_key: :user_id,
    class_name: :User
    
    has_many :questions,
      primary_key: :id,
      foreign_key: :poll_id,
      class_name: :Question
      
end 
