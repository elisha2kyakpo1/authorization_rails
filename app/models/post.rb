# frozen_string_literal: true

class Post < ApplicationRecord
  belongs_to :user, foreign_key: true
  has_many :comments, dependent: :destroy
end
