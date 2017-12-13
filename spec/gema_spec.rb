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

		expect(@cocinero.uno_mas).to eq(1)

	end

  end

end
