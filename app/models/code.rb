class Code < ApplicationRecord
  require 'csv'
  
  def self.import
    import_csv(File.read(Rails.root.join('first.csv')), 'first')
    import_csv(File.read(Rails.root.join('second.csv')), 'second')
  end

  def self.import_csv(csv_text, floor)
    csv = CSV.parse(csv_text, :headers => true)
    csv.each do |row|
      Code.create(date_string: row['Day'], code: row['Code'], floor: floor)
    end
  end
end
