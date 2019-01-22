require "faker"

class FakeDataGenerator
  attr_reader :required_categories_array

  def initialize
    print "Please enter all the categories you require, separated by slashes.\nAvailable categories: name/city/state/country/zip/email/comments\n"
    @required_categories_array = gets.chomp.downcase.split("/") # Returns array like ["name", "city"]
  end

  def generate_data_array
    data_array = []
    @required_categories_array.each do |category|
        data_array << case category
            when "name"
                Faker::Name.name
            when "city"
                Faker::Address.city
            when "state"
                Faker::Address.state
            when "country"
                Faker::Address.country
            when "zip"
                Faker::Address.zip
            when "email"
                Faker::Internet.email
            when "comments"
                Faker::Lorem.sentence(word_count = 5)
            else
                next # Iterate over the next item
        end
    end
    data_array # Returns the data array
  end
end