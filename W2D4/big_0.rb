def sluggish_octopus(fishes)
  # max_length = fishes[0].length
  for i in 0..fishes.length-2
    for j in 0..fishes.length-1
      if fishes[j].length < fishes[i].length
        fishes[j],fishes[i] = fishes[i],fishes[j]
      end
    end
  end
  fishes.last.length

end

sluggish_octopus(['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh'])
