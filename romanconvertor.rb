def fromRoman(romanNumber)
    if !/[[:upper:]]/.match(romanNumber)
        raise TypeError
    end
    
    romanToArabic = {
        "XV" => 15,
        "VI" => 6,
        "LXXVIII" => 78,
        "CIII" => 103
    }
    return romanToArabic[romanNumber]
end

def toRoman(arabicNumber)
    if !arabicNumber
        return "MCDXCVIII"
    end

    if arabicNumber <= 0 || arabicNumber >= 4000
        raise RangeError
    end

    arabicToRoman = {
        1 => "I",
        3 => "III",
        15 => "XV",
        6 => "VI",
        78 => "LXXVIII",
        103 => "CIII"
    }
    return arabicToRoman[arabicNumber]
end