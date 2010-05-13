class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :http_authenticatable, :token_authenticatable, :confirmable, :lockable, :timeoutable and :activatable
  devise :registerable, :authenticatable, :rememberable, :trackable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation
  
  has_one :todo_token, :class_name => "TodoToken", :foreign_key => "user_id"
  has_one :strings_token, :class_name => "StringToken", :foreign_key => "user_id"
end
