require "csv"

class CSVMaker
  def initialize(data_generator, cipher)
    @data_generator = data_generator
    @cipher = cipher

    print "Please name the file you are creating.\n"
    @output_file_name = "#{gets.chomp.downcase}.csv"
  end

  def generate_data_encrypt_write_to_csv
    print "Please enter the number of rows you require.\nThe maximum number of rows you can have is 100.\n"
    @number_of_rows = gets.chomp.to_i
    until @number_of_rows >= 1 && @number_of_rows <= 101
      print "Sorry, please enter a valid number between 1 and 100.\n"
      @number_of_rows = gets.chomp.to_i # If you delete this line, the error message will loop forever.
    end

    CSV.open(@output_file_name, "wb") do |output_csv|
      # First, check if cipher exists. If not, no encryption happens.
      header = @cipher ? @cipher.encrypt_array(@data_generator.required_categories_array) : @data_generator.required_categories_array
      output_csv << header

      @number_of_rows.times do
        row = @cipher ? @cipher.encrypt_array(@data_generator.generate_data_array) : @data_generator.generate_data_array
        output_csv << row
      end
    end
  end

  def decrypt_file_write_to_csv
    print "Please enter the name of the file you want to decrypt.\n"
    input_file_name = gets.chomp
    CSV.open(@output_file_name, "wb") do |output_csv|
      CSV.foreach(input_file_name, encoding: "ASCII-8BIT") do |row|
        decrypted_row = @cipher.decrypt_to_array(row)
        output_csv << decrypted_row
      end
    end
  end


end