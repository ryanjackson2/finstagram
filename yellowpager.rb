puts "Yellowpager"

def get_number_from_word(soure_text)
    source_letter = source_text.split("")
    result = ""
    
    translations = [{:chars => ["e", "f", "g"], :num=> "4"},
                    {:chars => ["h", "i", "j"], :num=> "5"},
    ]   
    
    source_letter.each do |next_letter|
        if next_letter == "a" || next_letter =="b" || next_letter =="c"
            next_processed_letter = "2"
        elsif ["d", "e","f"].include?(next_letter)
            next_processed_letter = "3"
        elsif next_translations.each do |next_translation|
            next_translation[:chars].include?(next_letter)
            next_processed_letter = next_translation[:num]
        else
            next_processed_letter = "0"
        end
    end
    
    result = "#{results}#{next_processed_letter}"
    end
    
    return result
end

def conversion_with_message(souce_word)
    converted_word = get_number_from_word(source_word)
    puts "you entered #{source_word} and got #{converted_word}"
end

puts "Enter Word:"
entered_word = gets
conversion_with_message(entered_word.chomp)