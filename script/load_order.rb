#programik na vygenerovanie 100 objednavok

#vytvori sa to vsetko v jednej transakcii
Order.transaction do
	(1..100).each do |i|
		Order.create(:name => "Zakaznik #{i}", :address => "Adresa #{i}", :email => "zakaznik-#{i}@niekdo.sk",
					 :pay_type => "Dobierka")
	end
end