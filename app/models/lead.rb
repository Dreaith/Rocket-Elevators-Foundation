class Lead < ApplicationRecord
    has_one_attached :contact_attachment_file
    after_create :upload
    def attachment_path
        
    end

    def to_s
        "Lead #" + self.id.to_s
    end
    def upload
        Dropbox.new(self).call
    end
    

end
