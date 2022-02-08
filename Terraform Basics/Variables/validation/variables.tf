variable "protein" {  
  type = string

  # Bloco de validação que testa se o valor atribuido à variável está numa lista de valores
  validation {
      condition = contains(["chicken","beef","tofu"],lower(var.protein))
      error_message = "The protein must be in the approved list of proteins."
  }

  # Bloco de validação que testa se o valor atribuido à variável não tem letras maiúsculas
  validation {
      condition = lower(var.protein) == var.protein
      error_message = "The protein name must not have capital letters."
  }
}

# Podemos testar as condições acima com os seguintes comando
# terraform apply -var protein=chicken
# terraform apply -var protein=fish