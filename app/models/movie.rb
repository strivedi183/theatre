# == Schema Information
#
# Table name: movies
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Movie < ActiveRecord::Base
  attr_accessible :name
  has_many :theaters, :inverse_of => :movie
end
