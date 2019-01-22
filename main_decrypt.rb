require_relative "fake_data_generator"
require_relative "decryptor"
require_relative "csv_maker"

# Execute this file when decrypting

key = "939QwtfwjydXDyByoSAxWjIfjOLKQv9p"

decrypted_csv_maker = CSVMaker.new(nil, Decryptor.new(key))
decrypted_csv_maker.decrypt_file_write_to_csv