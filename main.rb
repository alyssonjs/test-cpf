require_relative './lib/validate_cpf'

def main
    p 'Por faovr, digite seu cpf em um formato valido ex: 000.000.000-00'
    
    string = gets.chomp

    p validate(string)

    p validate(string) ? "O CPF é válido" : "O CPF não é válido"
end

main