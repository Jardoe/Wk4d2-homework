class String_check

  def initialize(s1, s2 = "")
    @s1 = s1
    @s2 = s2
  end

  def check_two_strings()
    if @s1 == @s2
      return "These words are the same!"
    else
      return "These aren't the same!"
    end
  end

  def check_length()
    if @s1.length == @s2.length
      return "These words have the same number of characters"
    else
      return "These words are different lengths"
    end
  end

  def palindrome()
    if @s1 == @s1.reverse
      return "This is a palindrome"
    else
      return "This isn't a palindrome"
    end
  end

  def isogram()
    if @s1.chars.uniq == @s1.chars
      return "This is an isogram"
    else
      return "This is not an isogram"
    end
  end

  def anagram()
    if @s1.split(//).sort() == @s2.split(//).sort()
      return "This is an anagram!"
    else
      return "This is not an anagram D:"
    end
  end
end
