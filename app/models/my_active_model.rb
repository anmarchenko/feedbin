class MyActiveModel
  include ActiveModel::API

  attr_accessor :name, :email, :message
  validates :name, :email, :message, presence: true
end
