require "fileutils"

photos = Dir["source/*.jpg"]

photos.each do |photo|

  FileUtils.copy_file(photo, "/target/#{photo}")

end
