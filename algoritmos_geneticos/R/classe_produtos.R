setClass (
  "Produto",
  slots = c(
    nome = "character",
    espaco = "numeric",
    valor = "numeric"
  )
)

#p1 = new("Produto", nome = "Geladeira Dako", espaco = 0.751, valor = 999.90)
listaProdutos = c(new("Produto", nome = "Geladeira Dako", espaco = 0.751, valor = 999.90),
                  new("Produto", nome = "Iphone 6", espaco = 0.0000899, valor = 2911.12),
                  new("Produto", nome = "TV 55' ", espaco = 0.400, valor = 4346.99),
                  new("Produto", nome = "TV 50' ", espaco = 0.290, valor = 3999.90),
                  new("Produto", nome = "TV 42' ", espaco = 0.200, valor = 2999.00),
                  new("Produto", nome = "Notebook Dell", espaco = 0.00350, valor = 2499.90),
                  new("Produto", nome = "Ventilador Panasonic", espaco = 0.496, valor = 199.90),
                  new("Produto", nome = "Microondas Electrolux", espaco = 0.0424, valor = 308.66),
                  new("Produto", nome = "Microondas LG", espaco = 0.0544, valor = 429.90),
                  new("Produto", nome = "Microondas Panasonic", espaco = 0.0319, valor = 299.29),
                  new("Produto", nome = "Geladeira Brastemp", espaco = 0.635, valor = 849.00),
                  new("Produto", nome = "Geladeira Consul", espaco = 0.870, valor = 1199.89),
                  new("Produto", nome = "Notebook Lenovo", espaco = 0.498, valor = 1999.90),
                  new("Produto", nome = "Notebook Asus", espaco = 0.527, valor = 3999.00)
)

for (produto in listaProdutos)
  print(produto@nome)