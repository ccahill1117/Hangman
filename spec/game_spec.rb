require('rspec')
require('./app')

describe("Hangman") do
  it("creates a new hangman game") do
    game = Hangman.new()
    expect(game.word()).to(eq("epicodus"))
    expect(game.attempts()).to(eq(0))
  end
end
