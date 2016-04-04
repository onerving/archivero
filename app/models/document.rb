class Document < ActiveRecord::Base
  has_many :comments
  mount_uploader :attachment, AttachmentUploader

  validates_presence_of :attachment, :message => "Recuerda que tienes que subir un documento." 
  validates_presence_of :name, :message => "No dejes a tu documento sin nombre!"
  validates_presence_of :uploader_name, :message => "Anota tu nombre para que todos sepan que subiste tu archivo."

end
