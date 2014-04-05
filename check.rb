require_relative 'square'

class Check
  def monopolies
    if Square.blue[0][:owner] == Square.blue[1][:owner] && Square.blue[0][:owner] != 'the Bank'
      true
    else
      false
    end
  end
end
