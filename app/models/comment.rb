class Comment < ActiveRecord::Base
  belongs_to :document

  validates_presence_of :author_name, message: "Por favor anota tu nombre"
  validates_presence_of :body, message: "No puedes dejar un comentario en blanco"
  validates_presence_of :email, message: "Por favor añade tu correo"
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/, message: "Por favor ingresa un correo valido"
end
