class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :trackable
end
