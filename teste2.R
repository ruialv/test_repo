# carrega a df com os dados a processar
load("C:/Documents and Settings/rui.alves/My Documents/CAE_CPP extended/Por_DadosInq/dados.RData")

# carrega os pacotes necessários
require (dplyr)
require (stringr)
require (readr)


# seleciona as vars necessárias
dados_cpp <- select(dados,
                    inq, ano, cr_cod, 
                    starts_with ("cpp_"))
# cria uma var (cpp_cod) com a codificação mais detalhada disponível
dados_cpp$cpp_cod <- ifelse (!is.na (dados_cpp$cpp_cod6), dados_cpp$cpp_cod6,(
  ifelse (!is.na (dados_cpp$cpp_cod5), dados_cpp$cpp_cod5, (
    ifelse (!is.na (dados_cpp$cpp_cod4), dados_cpp$cpp_cod4,(
      ifelse (!is.na (dados_cpp$cpp_cod3), dados_cpp$cpp_cod3,(
        ifelse (!is.na (dados_cpp$cpp_cod2), dados_cpp$cpp_cod2,(
          ifelse (!is.na (dados_cpp$cpp_cod1), dados_cpp$cpp_cod1, NA)))))))))))

# isto foi acrescentado na segunda vez
