Mask = /^[0-9]{3}.[0-9]{3}.[0-9]{3}-[0-9]{2}/

def verification(cpf)
    return false unless cpf.is_a? String
    return false if cpf.empty?

    cpf_numbers = cpf.gsub(/[\s.-]/ ,"").split("")
    
    chars = ('a'..'z').to_a

    cpf_numbers.each do |value|
        return false if chars.include?(value) 
    end
    
    Mask.match?(cpf) 
end