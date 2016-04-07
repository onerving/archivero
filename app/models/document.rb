class Document < ActiveRecord::Base
  has_many :comments
  mount_uploader :attachment, AttachmentUploader

  validates_presence_of :name, :message => "No dejes tu mensaje sin título!"
  validates_presence_of :uploader_name, :message => "No dejes tu mensaje anónimo!"
  validates_presence_of :email, :message => "Añade tu correo para que te podamos contestar"

end
