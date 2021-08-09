class Uf < ApplicationRecord
    def self.load_csv_data
        file = File.open("tmp/UF2019.csv")
        file_data = file.readlines.map(&:chomp)

        file_data.each_with_index do |row, index|
            next if index.zero?
            cols = row.split(",")
            Uf.create(day: "2019/01/#{cols[0]}", value: cols[1])
            if index <= 28
                Uf.create(day: "2019/02/#{cols[0]}", value: cols[2])
            end
        end
    end
end
