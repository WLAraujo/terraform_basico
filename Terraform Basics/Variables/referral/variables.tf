# Variáveis string
# Lembrando que variáveis podem ser string, number e boolean
variable "protein" {
    type = string
    default = "chicken"
}

variable "cheese" {
  type = string
  default = "cheddar"
  description = "Type of cheese to put on the taco."
}

# Variável que é uma lista
variable "toppings" {
  type = list
  default = ["lettuce","tomato","jalapenos"]
}

# Para usar as variáveis acima na configuração temos que setar um valor local
# Assim também podemos criar estruturas de variáveis mais complexas
locals {
  my_taco = {
      protein = var.protein
      cheese = var.cheese
      toppings = var.toppings
  }

  my_topping = var.toppings[0]
}

# Para verificar essas variáveis em ação vá até esse diretório no terminal e digite terraform apply
# Depois digite terraform console
# Depois veja os valores das variáveis através de local.my_taco e local.my_topping