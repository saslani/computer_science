def palindrome? (str)
  return str.casecmp(str.reverse) == 0
end


puts palindrome?("baab")
