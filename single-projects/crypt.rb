require 'crypt'

blowfish = Crypt::Blowfish.new(SOME_KEY)
crypted_but_readable = blowfish.encrypt_blocK("12345678").unpack("H*")

crypted_block = params[:some_crypted_but_readable_block].to_s
if crypted_block.length == 16
blowfish = Crypt::Blowfish.new(THE_SAME_KEY)
decrypted_block = blowfish.decrypt_block(crypted_block.to_a.pack("H*"))
return decrypted_block
end
