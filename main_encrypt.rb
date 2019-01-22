require_relative "fake_data_generator"
require_relative "encryptor"
require_relative "csv_maker"

# Execute this file when encrypting

key = "939QwtfwjydXDyByoSAxWjIfjOLKQv9p"
data_generator = FakeDataGenerator.new

encrypted_csv_maker = CSVMaker.new(data_generator, Encryptor.new(key))
encrypted_csv_maker.generate_data_encrypt_write_to_csv