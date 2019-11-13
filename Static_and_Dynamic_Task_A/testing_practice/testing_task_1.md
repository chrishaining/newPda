### Testing task 1:

# Carry out static testing on the code below.
# Comment on any errors that you see below.
```ruby

class CardGame


  def checkforAce(card) #format of the method name is unusual (a sort of camelCase, rather than underscore), but is not an error
    if card.value = 1 #should be ==
      return true
    else
      return false
    end
  end

  dif highest_card(card1 card2) #incorrect spelling of def; there needs to be a comma between the two parameters
  if card1.value > card2.value
    return card #card has not been defined (this should be replaced by card1)
  else
    return card2
  end
end
end #this end is in the wrong place - it seems to be the end for the class function

def self.cards_total(cards)
  total #this should be set to a value, 0
  for card in cards
    total += card.value
    return "You have a total of" + total #this is in the wrong place. It should be outside of the for loop; otherwise, it will return after the first iteration. Also, the concatenation doesn't work. I would replace it with interpolation.
  end
end
```
