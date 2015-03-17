class Photo < ActiveRecord::Base

  attr_accessor :file

  before_create :store_file
  before_destroy :destroy_file

  private
  def store_file
    self.path = '/attachments/' + self.file.original_filename
    File.open(full_path, "wb") do |f|
      f.write self.file.read
    end
  end

  def destroy_file
    begin
      File.unlink full_path
    rescue
      nil
    end
  end

  def full_path
    return Rails.root.join('public').to_s + self.path
  end
end
