# Conceitos básicos Terraform

## Módulos em Terraform

Um **Módulo** *(Module)* nada mais é que uma coleção de arquivos *.tf* e *.tf.json* em uma pasta. Lembrando que arquivos *.tf* estão em Hashicorp Configuration Language 2 (HCL2).

O **Módulo Raíz** *(Root Module)* é o diretório que possui os arquivos *core* do Terraform. Quando usamos comandos do Terraform como *plan* e *apply* eles operam em um estado definido pelo módulo raíz. De maneira mais simples, o módulo raíz é o diretório que você está trabalhando e executando seus comandos Terraform.

Também podemos ter **Módulos Filhos** *(Child Module)*, que são módulos invocados pela configuração do outro módulo. Módulos filhos também podem ter módulos filhos.

Existem duas formas de colocar informação dentro de um módulo do Terraform *(inputs)*. Uma delas é através de **variáveis**, essas são a forma que temos de passar para o Terraform informações que serão usadas durante a construção e configuração. Variáveis podem ser usadas em módulos raíz ou módulos filho.

A outra forma de colocar informação em um módulo é através de **fontes de dados** *(data sources)*. Fontes de dados são uma forma que buscar informação externa em alguma fonte.

**Variáveis Locais** *(Local Variables)* ou **Valores Locais** *(Local Values)* são valores definidos dentro da configuração e são reutilizáveis ao longo da configuração.

Então, podemos usar como fonte de dados valores locais que configuramos ao longo da configuração ou atributos de recursos e fontes de dados, também podemos usar os *outputs* dos nossos módulos.

No contexto de módulos, conseguimos retirar informações do Terraform através de *outputs*. Na maioria das vezes, outputs são usadas para passar informação para o módulo raíz ou para um módulo pai.

Só podemos uar como informação no Terraform aquiles atributos e valores que estiverem expostos através de *outputs*. Então, é sempre necessário verificar se quando fazemos um módulo as *outputs* criadas são suficientes para servir de *inputs* para outros módulos e configurações. 

## Variáveis de Entrada

As variáveis definidas no módulo raíz são a forma como colocamos informações no Terraform em tempo de execução. Segue um exemplo de sintaxe de uma declaração de um bloco de variável sem argumento.

`variable "taco" {}`

Acima declaramos uma variável e seu nome. Normalmente, teriamos argumentos e seus valores dentro desse bloco. Veja que a definição de uma variável não precisa de argumentos. Mais informações e exemplos de variáveis podem ser encontradas no diretório `2021-07-13-Variables`.