class Mutation

  def initialize
    @specimen = {generation: 0, name: ""}
    @offspring = []
    @result = "Ruby"
  end

  def perform
    breed
    mutate
    if compare Mutation.perform
  end

  def breed
    10.times {offspring << specimen.name}
  end

  def mutate
    offspring.each { |n| n << rand(36).to_s(36) if rand(5) == 0 }
  end

  def compare

  end

end
