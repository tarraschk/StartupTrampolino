class Proposition
  attr_accessor :title, :resume, :constat, :solution, :impact, :acteurs

  def initialize
    @title = ""
    @resume = ""
    @constat = ""
    @solution = ""
    @impact = ""
    @acteurs = ""
  end

  def get_picture
    'images/icones/' + index
  end

  def get_propositions_set
    return propositions_set
  end
end
