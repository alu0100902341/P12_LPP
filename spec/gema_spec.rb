require "spec_helper.rb"

RSpec.describe Gema do
  it "has a version number" do
    expect(Gema::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(true).to eq(true)
  end



  describe Cocinero do

	before :each do

		@cocinero = Cocinero.new

	end

	it "Cocinero atributo experiencia" do

		expect(@cocinero.experiencia).to eq(0)

	end

	it "Cocinero atributo contador de platos" do

		expect(@cocinero.contador).to eq(0)

	end

	it "Método uno_mas que añade un año de experiencia" do

		@cocinero.uno_mas
		expect(@cocinero.experiencia).to eq(1)

	end

	it "Método degustar 1 que degusta un plato del cocinero" do
		
		@cocinero.uno_mas
		@cocinero.uno_mas
		@cocinero.uno_mas
		@cocinero.degustar_uno
		expect(@cocinero.contador).to eq(0)

	end


  end

end
