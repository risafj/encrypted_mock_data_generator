require "OpenSSL"
# require "pry"

class CFBCipher
  def initialize(key_string)
    @cipher = OpenSSL::Cipher::AES256.new(:CFB)
    @cipher.key = key_string
  end
end
