Funcionalidade: Cadastro de informações de endereço
  Como um usuário
  Quero informar meus dados de endereço corretamente
  Para que o sistema registre minha localização com precisão

  Esquema do Cenário: Validação do campo Endereço
    Dado que o sistema está funcional e o usuário acessa o formulário de cadastro
    Quando ele digita um <endereço> no campo "Endereço"
    Então deve ocorrer <resultado>

    Exemplos:
      | endereço                     | resultado                         |
      | Rua das Flores, 123, Apto 45 | Endereço aceito                   |
      | Rua sem número               | Endereço aceito                   |
      |                              | Campo obrigatório não preenchido  |
      | 123                          | Endereço incompleto               |

  Esquema do Cenário: Validação do campo Cidade
    Dado que o sistema está funcional e o usuário acessa o formulário de cadastro
    Quando ele digita uma <cidade> no campo "Cidade"
    Então deve ocorrer <resultado>

    Exemplos:
      | cidade          | resultado                         |
      | São Paulo       | Cidade aceita                     |
      | Rio de Janeiro  | Cidade aceita                     |
      |                 | Campo obrigatório não preenchido  |
      | 12345           | Cidade inválida                   |

  Esquema do Cenário: Validação da seleção de estado
    Dado que o sistema está funcional e o usuário acessa o formulário de cadastro
    Quando ele seleciona a opção <estado> no campo "Estado"
    Então deve ocorrer <resultado>

    Exemplos:
      | estado   | resultado                      |
      | SP       | Estado selecionado com sucesso |
      | RJ       | Estado selecionado com sucesso |
      | MG       | Estado selecionado com sucesso |
      |          | Nenhuma opção selecionada      |

  Esquema do Cenário: Validação do campo CEP
    Dado que o sistema está funcional e o usuário acessa o formulário de cadastro
    Quando ele digita um <cep> no campo "CEP"
    Então deve ocorrer <resultado>

    Exemplos:
      | cep         | resultado                         |
      | 01001-000   | CEP aceito                        |
      | 12345678    | Formato inválido                  |
      |             | Campo obrigatório não preenchido  |
      | 00000-000   | CEP inexistente                   |