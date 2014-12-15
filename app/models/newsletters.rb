class Newsletters < ActiveRecord::Base
	mount_uploader :file, PdfUploader
end
