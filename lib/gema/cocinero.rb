class Cocinero

attr_accessor :experiencia, :contador

	def initialize

		@experiencia = 0
		@contador = 0
		@estado = "pinche"

	end

	def uno_mas

		if @experiencia < 7

			@experiencia = @experiencia + 1
		
			if @experiencia == 3

				@estado = "cocinero"

			end

			if @experiencia >= 3

				@contador = @contador + 1

			end
		else
		
			@estado = "jubilado"		

		end

	end

	def degustar_uno

		if @estado == "cocinero"

			if @contador == 0

				puts "Sorry, no dishes to taste"
			
			else

				@contador = @contador - 1
				puts "The dish is delicious"

			end

		elsif @estado == "pinche"

			puts "Sorry, no dishes to taste"

		elsif @estado == "jubilado"

			puts "Sorry, the Chef is retired"

		end

	end

end


	@cocinero = Cocinero.new
	mutex = Mutex.new

	@t1 = Thread.new do
		for i in 0..10
			@cocinero.uno_mas
			sleep 0.2
		end
	end

	@t2 = Thread.new do
		for i in 0..10
			@cocinero.degustar_uno
			sleep 0.2
		end
	end

	@t2.join
	@t1.join
