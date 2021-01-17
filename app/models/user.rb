# frozen_string_literal: true

class User < ApplicationRecord
  has_secure_password
  has_many :comments, through: :post
  has_many :posts
end
