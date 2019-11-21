sigmoide = function(soma) {
  return (1 / (1 + exp(-soma)))
}

sigmoideDerivada = function(sig) {
  return (sig * (1 - sig))
}

entradas = read.csv("entradas.csv")
entradas = data.matrix(entradas)
saidas = read.csv("saidas.csv")
saidas = data.matrix(saidas)

pesos0 = matrix(runif(90, min = -1, max = 1), nrow = 30, ncol = 3, byrow = T)
pesos1 = matrix(runif(3, min = -1, max = 1), nrow = 3, ncol = 1, byrow = T)
epocas = 100000
momento = 1
taxaAprendizagem = 0.5

for (j in 1:epocas) {
  camadaEntrada = entradas
  somaSinapse0 = camadaEntrada %*% pesos0
  camadaOculta = sigmoide(somaSinapse0)
  
  somaSinapse1 = camadaOculta %*% pesos1
  camadaSaida = sigmoide(somaSinapse1)
  
  erroCamadaSaida = saidas - camadaSaida
  mediaAbsoluta = mean(abs(erroCamadaSaida))
  print(paste('Erro: ', mediaAbsoluta))
  
  derivadaSaida = sigmoideDerivada(camadaSaida)
  deltaSaida = erroCamadaSaida * derivadaSaida
  
  #deltaSaidaXPeso = deltaSaida %*% pesos1
  pesos1Transposta = t(pesos1)
  deltaSaidaXPeso = deltaSaida %*% pesos1Transposta
  deltaCamadaOculta = deltaSaidaXPeso * sigmoideDerivada(camadaOculta)
  
  camadaOcultaTransposta = t(camadaOculta)
  pesosNovo1 = camadaOcultaTransposta %*% deltaSaida
  pesos1 = (pesos1 * momento) + (pesosNovo1 * taxaAprendizagem)
  
  camadaEntradaTransposta = t(camadaEntrada)
  pesosNovo0 = camadaEntradaTransposta %*% deltaCamadaOculta
  pesos0 = (pesos0 * momento) + (pesosNovo0 * taxaAprendizagem)
}
