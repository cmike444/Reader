class Document < ActiveRecord::Base
  belongs_to :user
  attachment :file, extension: "pdf"
end
