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

		cocinero = Cocinero.new

	end

	if "Cocinero atributo experiencia" do

		expect(cocinero.experiencia).to eq(0)

	end

	if "Cocinero atributo contador de platos" do

		expect(cocinero.contador).to eq(0)

	end

  end

end
