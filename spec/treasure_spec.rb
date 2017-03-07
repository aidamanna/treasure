require_relative '../treasure'

describe TreasureMap do
  it 'has a treasure' do
    expect(new_treasure_map).not_to be(nil)
  end

  it 'knows where the treasure is' do
    another_location = Location.new(0, 0)
    expect(new_treasure_map.is_in(another_location)).to eql('Success')
  end

  it 'knows the treasure is one position away' do
    another_location = Location.new(1, 1)
    expect(new_treasure_map.is_in(another_location)).to eql('Hot')
  end

  it 'knows the treasure is two positions away' do
    another_location = Location.new(1, 2)
    expect(new_treasure_map.is_in(another_location)).to eql('Warm')
  end

  it 'knows the treasure is three positions away' do
    another_location = Location.new(0, 3)
    expect(new_treasure_map.is_in(another_location)).to eql('Cold')
  end

  def new_treasure_map
    treasure_location = Location.new(0, 0)
    TreasureMap.new(treasure_location)
  end
end
