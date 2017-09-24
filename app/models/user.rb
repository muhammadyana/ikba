class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
       	:recoverable, :rememberable, :validatable, :confirmable,
       	:omniauthable, :omniauth_providers => [:facebook, :google_oauth2, :twitter]
end
