module Lexicon

    @dictionary = {
        direction: ['north', 'south', 'east', 'west', 'down', 'up', 'left', 'right', 'back'],
        verb: ['go', 'kill', 'stop', 'eat'],
        stop: ['the', 'in', 'of', 'from', 'at', 'it'],
        noun: ['door', 'bear', 'princess', 'cabinet'],
    }

    def self.convert_number(object)
        # Converts an object to integer

        # begin => rescue is Ruby's syntax for exception handling
        begin
            return Integer(object)
        rescue
            return nil
        end
    end

    def self.scan_type(word)
        parsed_number = convert_number(word)
        if parsed_number
            return ['number', parsed_number]
        else
            @dictionary.keys().each do |key|
                if @dictionary[key].include?(word)
                    return [key.to_s, word]
                end
            end
        end
        return ['error', word]
    end

    def self.scan(input_str)
        words = input_str.split(' ')
        
        result = []
        words.each do |word|
            result.push(scan_type(word))
        end

        return result
    end
end