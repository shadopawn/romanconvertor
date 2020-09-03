def fromRoman(romanNumber)
    if !/[[:upper:]]/.match(romanNumber)
        raise TypeError
    end
    
    roman_mapping = {
        1000 => "M",  
        900 => "CM",  
        500 => "D",  
        400 => "CD",
        100 => "C",  
        90 => "XC",  
        50 => "L",  
        40 => "XL",  
        10 => "X",  
        9 => "IX",  
        5 => "V",  
        4 => "IV",  
        1 => "I",  
    }

    result = 0
    roman_mapping.values.each do |roman|
        while romanNumber.start_with?(roman)
            result += roman_mapping.invert[roman]
            romanNumber = romanNumber.slice(roman.length, romanNumber.length)
        end
    end
    return result
end

def toRoman(arabicNumber)

    if arabicNumber <= 0 || arabicNumber >= 4000
        raise RangeError
    end
       
    roman_mapping = {
        1000 => "M",
        900 => "CM",
        500 => "D",
        400 => "CD",
        100 => "C",
        90 => "XC",
        50 => "L",
        40 => "XL",
        10 => "X",
        9 => "IX",
        5 => "V",
        4 => "IV",
        1 => "I"
    }

    result = ""
    roman_mapping.keys.each do |divisor|
      quotient, modulus = arabicNumber.divmod(divisor)
      result << roman_mapping[divisor] * quotient
      arabicNumber = modulus
    end
    return result
end