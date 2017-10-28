class Line < ApplicationRecord
  belongs_to :host, class_name: "User", foreign_key: "user_id"
  has_many :user_lines
  has_many :users, through: :user_lines
end
