# encoding: utf-8
class Material < ActiveRecord::Base
  belongs_to :discipline

#Paperclip
  has_attached_file :mfile

  attr_accessible :file_name, :file_number , :mfile   , :file_type

end

#   user = User.new
#   user.avatar = params[:user][:avatar]
#   user.avatar.url
#   # => "/users/avatars/4/original_me.jpg"



#has_attached_file :mfile