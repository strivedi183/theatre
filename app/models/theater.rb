# == Schema Information
#
# Table name: theaters
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  location   :string(255)
#  movie_id   :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Theater < ActiveRecord::Base
  attr_accessible :name, :location, :movie_id
  belongs_to :movie, :inverse_of => :theaters
  has_many :tickets, :inverse_of => :theater

  def number_of_tickets
    tickets.length
  end
end