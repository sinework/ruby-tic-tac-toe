describe "bin/Tictactoe" do
  it 'instantiates an instance of TicTacToe' do
    game = TicTacToe.new
    allow($stdout).to receive(:puts)
    allow(game).to receive(:play)
    allow(game).to receive(:gets).and_return("1")

    expect(TicTacToe).to receive(:new).and_return(game)