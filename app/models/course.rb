class Course < ApplicationRecord
  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
     Courses.create! row.to_hash
    end
  end

end
