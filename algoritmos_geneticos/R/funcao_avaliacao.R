setClass (
  "Produto",
  slots = c(
    nome = "character",
    espaco = "numeric",
    valor = "numeric"
  )
)

setClass (
  "Individuo",
  slots = c(
    espacos = "numeric",
    valores = "numeric",
    limiteEspacos = "numeric",
    notaAvaliacao = "numeric",
    espacoUsado = "numeric",
    geracao = "numeric",
    cromossomo = "character"
  ),
  
  prototype = list(
    espacos = 0,
    valores = 0,
    limiteEspacos = 0,
    notaAvaliacao = 0,
    espacoUsado = 0,
    geracao = 0
  )
)

gerarCromossomo = function(tamanhoCromossomo) {
  cromossomo = sample(x = c("0", "1"), size = tamanhoCromossomo, replace = TRUE)
  return(cromossomo)
}

avaliacao = function(individuo) {
  nota = 0
  somaEspacos = 0
  for (i in 1:length(individuo@cromossomo)) {
    if (individuo@cromossomo[i] == '1') {
      nota = nota + individuo@valores[i]
      somaEspacos = somaEspacos + individuo@espacos[i]
    }
  }
  if (somaEspacos > individuo@limiteEspacos) {
    nota = 1
  }
  
  individuo@notaAvaliacao = nota
  individuo@espacoUsado = somaEspacos
  
  return(individuo)
}

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

espacos = c()
valores = c()
nomes = c()
for (produto in listaProdutos) {
  espacos = c(espacos, produto@espaco)
  valores = c(valores, produto@valor)
  nomes = c(nomes, produto@nome)
}
limite = 3

individuo1 = new("Individuo", espacos = espacos, valores = valores, limiteEspacos = limite)
individuo1@cromossomo = gerarCromossomo(length(listaProdutos))
individuo1 = avaliacao(individuo1)
cat("Nota: ", individuo1@notaAvaliacao, "\nEspaço usado: ", individuo1@espacoUsado)
