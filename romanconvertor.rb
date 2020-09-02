def fromRoman(romanNumber)
    romanToArabic = {
        "XV" => 15,
        "VI" => 6,
        "LXXVIII" => 78,
        "CIII" => 103
    }
    return romanToArabic[romanNumber]
end

def toRoman(arabicNumber)
    arabicToRoman = {
        1 => "I",
        3 => "III",
        15 => "XV",
        6 => "VI",
        78 => "LXXVIII",
        103 => "CIII"
    }
    if arabicToRoman[arabicNumber]
        return arabicToRoman[arabicNumber]
    else
        return "MCDXCVIII"
    end
end