# == Schema Information
#
# Table name: tickets
#
#  id         :integer          not null, primary key
#  movie_id   :string(255)
#  user_id    :string(255)
#  is_bought  :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Ticket < ActiveRecord::Base
  attr_accessible :movie_id, :user_id, :is_bought
  belongs_to :theater, :inverse_of => :tickets
  belongs_to :user, :inverse_of => :tickets
end
