class Lead < ApplicationRecord
    has_one_attached :contact_attachment_file
    before_create :sanitize_filename
    after_create :upload
    def attachment_path
    
        
    end
    def sanitize_filename(filename)
        filename.strip.tap do |name|
          # NOTE: File.basename doesn't work right with Windows paths on Unix
          # get only the filename, not the whole path
          name.sub! /\A.*(\\|\/)/, ''
          # Finally, replace all non alphanumeric, underscore
          # or periods with underscore
          name.gsub! /[^\w\.\-]/, '_'
        end
    end

    def to_s
        "Lead #" + self.id.to_s
    end

    def upload
        Dropbox.new(self).call
    end

end
