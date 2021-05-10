abstract sig Usuario { }

sig Cliente extends Usuario {
}

one sig Administrador extends Usuario { }

sig GPV extends Usuario{
}

sig Vacina {
	tipoVacina: one TipoVacina,
}

sig Posto{
	gpv:  disj one GPV
}

sig TipoVacina { }

sig Agendamento { 
	vacina: disj one Vacina,
	cliente: one Cliente,
	posto: one Posto
}

pred show() {}
run show for 5
