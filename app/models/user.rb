# frozen_string_literal: true

class User < ApplicationRecord
  validates_presence_of :first_name, :last_name

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
