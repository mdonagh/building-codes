class Phone < ApplicationRecord
  require 'csv'

  def self.import
    import_csv(File.read(Rails.root.join('phone_numbers.csv')))
  end

  def self.import_csv(csv_text)
    csv = CSV.parse(csv_text, :headers => true)
    csv.each do |row|
      Phone.create(phone_string: row[0][0..9])
    end
  end
end
