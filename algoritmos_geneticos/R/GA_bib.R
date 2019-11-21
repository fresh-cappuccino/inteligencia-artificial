#install.packages("GA")
library(GA)

setClass (
  "Produto",
  slots = c(
    nome = "character",
    espaco = "numeric",
    valor = "numeric"
  )
)

library(RMySQL)
conexao = dbConnect(MySQL(), user = "root", password = "123456", dbname = "produtos", host = "localhost")
dataFrameProdutos = dbGetQuery(conexao, "select nome, espaco, valor, quantidade from produtos")
dbDisconnect(conexao)
listaProdutos = c()
for (i in 1:nrow(dataFrameProdutos)) {
  #print(dataFrameProdutos["nome"])
  for (j in 1:dataFrameProdutos[i, 4]) {
    listaProdutos = c(listaProdutos, new("Produto", nome = dataFrameProdutos[i, 1],
                                         espaco = dataFrameProdutos[i, 2],
                                         valor = dataFrameProdutos[i, 3]))
  }
}

espacos = c()
valores = c()
nomes = c()
for (produto in listaProdutos) {
  espacos = c(espacos, produto@espaco)
  valores = c(valores, produto@valor)
  nomes = c(nomes, produto@nome)
}
limite = 10

avaliacao = function(cromossomo) {
  nota = 0
  somaEspaco = 0
  for (i in 1:length(cromossomo)) {
    if (cromossomo[i] == '1') {
      nota = nota + valores[i]
      somaEspaco = somaEspaco + espacos[i]
    }
  }
  if (somaEspaco > limite) {
    nota = 1
  }
  return(nota)
}

# algoritmo@bestSol
algoritmo = ga(type = "binary", fitness = avaliacao, nBits = length(listaProdutos),
               population = gabin_Population, selection = gabin_rwSelection,
               crossover = gabin_spCrossover, mutation = gabin_raMutation, popSize = 20,
               pcrossover = 0.8, pmutation = 0.05, elitism = 0.05, maxiter = 100,
               keepBest = TRUE, seed = 20)
summary(algoritmo)
plot(algoritmo)
for (i in 1:length(listaProdutos)) {
  if (algoritmo@solution[i] == '1') {
    cat("\n Nome: ", nomes[i], " R$: ", valores[i])
  } 
}

