# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'csv'

def import_csv(file_name)
  file_path = "db/csv/#{file_name}.csv"

  CSV.foreach(file_path, headers: true) do |row|
    # row[:timestamp] = row.delete('@timestamp')
    # row[:timestamps] = row[:timestamps]
    # row[:brand] = row[:brand]
    Airmeasure.create!(row.to_h)
  end
end

import_csv('20211101_B3D54FD00007B2')
import_csv('20211101_B3D54FD000088A')
import_csv('20211101_B3D54FD000088F')
