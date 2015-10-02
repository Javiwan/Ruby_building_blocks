#downscore letters goes from 97 to 122 => 25 letters
#upscore letters goes from 65 to 90
puts""
puts "This program will cipher your text using the Caesar Cipher, you will have to
introduce a text and the key of cipher, and then you will see the text cipher"
puts ""

puts "Introduce the text to cipher"
text = gets.chomp

puts "Introduce the key of cipher"
rotation = gets.chomp.to_i



def caesar_cipher (text, rotation)
	
	cipher_text = [] #Array for cipher text

	puts "Original text: #{text}"

		text.length.times do |num|

			order = text[num].ord

			if order >= 97 and order <= 122
				cipher_text[num] = ((order-97+rotation)%26)+97
				cipher_text[num] = cipher_text[num].chr

			elsif order >= 65 and order <= 90
				cipher_text = ((order-65+rotation)%26)+65
				cipher_text[num] = cipher_text[num].chr

			else
				cipher_text[num] = text[num]

			end

		end

	output = cipher_text.join
	puts "Cipher text : #{output}"
	
end

caesar_cipher(text, rotation)