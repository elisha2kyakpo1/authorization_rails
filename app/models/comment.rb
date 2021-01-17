# frozen_string_literal: true

class Comment < ApplicationRecord
  belongs_to :post, foreign_key: true
  belongs_to :user, foreign_key: true
end
