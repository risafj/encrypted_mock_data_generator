require "OpenSSL"
require_relative 'cfbcipher.rb'

class Encryptor < CFBCipher
  def initialize(key_string)
    super(key_string)
    @cipher.encrypt
  end

  def encrypt_array(array_to_encrypt)
    raise ArgumentError.new('input to encrypt must be array') unless array_to_encrypt.is_a? Array #stops program if error
    encrypt_from_string_to_array(array_to_encrypt.join("//"))       
  end

  def encrypt_from_string_to_array(string)
    iv = @cipher.random_iv
    [iv, @cipher.update(string)]
  end
end