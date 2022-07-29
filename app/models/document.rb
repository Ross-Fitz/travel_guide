class Document < ApplicationRecord
    mount_uploader :attachment, AttachmentUploader
    has_one_attached :file
    validates :name, presence: true 

end
