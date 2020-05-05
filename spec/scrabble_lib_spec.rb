require('rspec')
require('scrabble')

describe ('String#word_dict') do 
  it('returns a scrabble score for a letter') do
    expect("a".word_dict()).to(eq(1))
  end

  it("returns the sum of multiple letters") do
    expect("no".word_dict()).to(eq(2))
  end

  it("returns a scrabble score for two point letters") do
    expect("d".word_dict()).to(eq(2))
  end

  it("returns the sum of multiple letters for one and two points") do
    expect("dad".word_dict()).to(eq(5))
  end

  it("returns a scrabble score for three points") do
    expect("b".word_dict()).to(eq(3))
  end

  it("returns a scrabble score for four points") do
    expect("f".word_dict()).to(eq(4))
  end

  it("returns a scrabble score for five points") do
    expect("k".word_dict()).to(eq(5))
  end

  it("returns a scrabble score for eight points") do
    expect("j".word_dict()).to(eq(8))
  end

  it("returns a scrabble score for ten points") do
    expect("q".word_dict()).to(eq(10))
  end

  it("returns a scrabble score for five points") do
    expect("k".word_dict()).to(eq(5))
  end

  it("returns total score for multiple letters") do
    expect("bagfkjq".word_dict()).to(eq(33))
  end
end