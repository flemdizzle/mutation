class Mutation

  def initialize
    @specimen = {}
    @offspring = []
    @result = "Ruby"
  end

  def perform
    breed
    mutate
    if compare Mutation.perform
  end

  def breed
    10.times{offspring << specimen}
  end

  def mutate

  end

  def compare

  end

end
