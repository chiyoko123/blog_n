# == Schema Information
#
# Table name: posts
#
#  id         :integer         not null, primary key
#  title      :string
#  body       :text
#  created_at :datetime        not null
#  updated_at :datetime        not null
#
class Post < ApplicationRecord
  has_many :comments, dependent: :destroy
  belongs_to :user, :optional => true
  validates_presence_of :title
  validates_presence_of :body
end
