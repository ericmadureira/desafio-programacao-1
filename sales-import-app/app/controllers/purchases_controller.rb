class PurchasesController < ApplicationController
	
	def purchase_file_import		
	end

	def purchase_file_processing
		@lines = []
		file = params[:import_file]
		file_content = file.tempfile.readlines.each do |l|
			@lines.push(l)
		end
		@lines.shift
		gross_income = 0.0
		@lines.each do |l|
			client = Client.find(:first, conditions: "name = '#{l[0]}'")
			@purchase = Purchase.create(client_id: client.id, count: l[3])
			gross_income += l[2].to_f * l[3].to_i
		end
		redirect_to :purchase_file_result, {gross_income: gross_income}
	end

	def purchase_file_result
	end
end
