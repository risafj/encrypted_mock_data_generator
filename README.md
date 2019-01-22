# Encrypted Mock Data Generator
## Purpose and Motivation
This is a Ruby mini-project that generates a csv file populated with mock client data (such as name and address), which can be encrypted and decrypted.

You can choose which category/ies to include in the mock data, as well as how many rows of data you would like.

My goal for this project was to learn the basics of encryption using OpenSSL.

## How to Use
After cloning the repo, execute `main_encrypt.rb` to generate encrypted csv with mock data.

Execute `main_decrypt.rb` to decrypt the generated csv.

## Library Dependencies
- Encryption: [OpenSSL](https://ruby-doc.org/stdlib-2.4.0/libdoc/openssl/rdoc/OpenSSL/Cipher.html#method-i-final) AES256

- Mock data generation: [Faker](https://github.com/stympy/faker)

- CSV generation: [CSV](https://ruby-doc.org/stdlib-2.0.0/libdoc/csv/rdoc/CSV.html)