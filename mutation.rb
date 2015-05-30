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
    specimen[:generation] += 1
    100.times {offspring << specimen}
  end

  #mutate needs to do more than just add things
  def mutate
    offspring.each { |n| n << rand(36).to_s(36) if rand(5) == 0 }
  end

  def compare
    offspring.each do |n|

      #returns if names match
      return false if n === result

      #set baseline points based off length comparison
      n[:points] = result.length - n[:name].length

      #assigns points based off matching letters
      result.split("").each_with_index do |r, i|
        n[:points] += 1 if n[:name][i] === r
      end

    end
    #compare length
    #compare string letter values
    #pick best fit or match
    #return true if not match

  end

end
