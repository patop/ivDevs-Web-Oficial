class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  enum role: [:admin, :editor, :miembro]
  
  def full_name
  	name.humanize.to_s + ' ' + lastname.humanize.to_s
  end
end
