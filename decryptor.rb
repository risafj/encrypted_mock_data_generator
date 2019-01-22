require "OpenSSL"
require_relative 'cfbcipher.rb'

class Decryptor < CFBCipher
  def initialize(key_string)
    super(key_string)
    @cipher.decrypt
  end

  def decrypt_to_array(array_of_iv_and_encrypted_string)
    decrypt_to_string(array_of_iv_and_encrypted_string).split("//")
  end

  def decrypt_to_string(array_of_iv_and_encrypted_string)
    @cipher.iv = array_of_iv_and_encrypted_string[0]
    @cipher.update(array_of_iv_and_encrypted_string[1])
  end
end