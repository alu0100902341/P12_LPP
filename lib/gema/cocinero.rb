class Cocinero

attr_accessor :experiencia, :contador, :edad

	def initialize

		@edad = 36
		@experiencia = "pinche"
		@contador = 0

	end

	def uno_mas

		if @edad < 50

			@edad = @edad + 1
		
			if @edad == 44

				@experiencia = "cocinero"

			end

			if @edad >= 44

				@contador = @contador + 1

			end
		else
		
			@experiencia = "jubilado"		

		end

	end

	def degustar_uno

		if @experiencia == "cocinero"

			if @contador == 0

				puts "Sorry, no dishes to taste"
			
			else

				@contador = @contador - 1
				puts "The dish is delicious"

			end

		elsif @experiencia == "pinche"

			puts "Sorry, no dishes to taste"

		elsif @experiencia == "jubilado"

			puts "Sorry, the Chef is retired"

		end

	end

end


	@cocinero = Cocinero.new

	@t1 = Thread.new do
		for i in 0..17
			@cocinero.uno_mas
			sleep(rand(0.1))
		end
	end

	@t2 = Thread.new do
		for i in 0..17
			@cocinero.degustar_uno
			sleep(rand(0.1))
		end
	end

	@t2.join
	@t1.join
