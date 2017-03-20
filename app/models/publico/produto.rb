class Publico::Produto < ApplicationRecord
	mount_uploaders :fotos, FotoUploader
end
