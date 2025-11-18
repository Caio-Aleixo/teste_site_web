Funcionalidade: Cadastro de informações pessoais
  Como um usuário
  Quero preencher meus dados corretamente
  Para que o sistema aceite meu cadastro

  Esquema do Cenário: Preenchimento do campo Nome
    Dado que o sistema está funcional e o usuário acessa o formulário de cadastro
    Quando ele digita um <nome> no campo "Nome"
    Então deve ocorrer <resultado>

    Exemplos:
      | nome     | resultado                            |
      | João     | Nome aceito                          |
      |          | Campo obrigatório não preenchido     |
      | @João123 | Nome inválido                        |

  Esquema do Cenário: Preenchimento do campo Sobrenome
    Dado que o sistema está funcional e o usuário acessa o formulário de cadastro
    Quando ele digita um <sobrenome> no campo "Sobrenome"
    Então deve ocorrer <resultado>

    Exemplos:
      | sobrenome | resultado                           |
      | Silva     | Sobrenome aceito                    |
      |           | Campo obrigatório não preenchido    |
      | @Silva99  | Sobrenome inválido                  |

  Esquema do Cenário: Validação do campo E-mail
    Dado que o sistema está funcional e o usuário acessa o formulário de cadastro
    Quando ele digita um <email> no campo "E-mail"
    Então deve ocorrer <resultado>

    Exemplos:
      | email                  | resultado                         |
      | joao@email.com         | E-mail aceito                     |
      | joao.email.com         | E-mail inválido                   |
      |                        | Campo obrigatório não preenchido  |
      | joao@                  | E-mail incompleto                 |

  Esquema do Cenário: Validação do campo Telefone
    Dado que o sistema está funcional e o usuário acessa o formulário de cadastro
    Quando ele digita um <telefone> no campo "Telefone"
    Então deve ocorrer <resultado>

    Exemplos:
      | telefone         | resultado                         |
      | (11) 91234-5678  | Telefone aceito                   |
      | 91234-5678       | Formato inválido                  |
      |                  | Campo obrigatório não preenchido  |
      | (99) 99999-999   | Número incompleto                 |

  Esquema do Cenário: Validação do campo CPF
    Dado que o sistema está funcional e o usuário acessa o formulário de cadastro
    Quando ele digita um <cpf> no campo "CPF"
    Então deve ocorrer <resultado>

    Exemplos:
      | cpf              | resultado                         |
      | 123.456.789-09   | CPF aceito                        |
      | 12345678909      | Formato inválido                  |
      |                  | Campo obrigatório não preenchido  |
      | 000.000.000-00   | CPF inválido                      |

  Esquema do Cenário: Validação do campo Data de Nascimento
    Dado que o sistema está funcional e o usuário acessa o formulário de cadastro
    Quando ele digita uma <data> no campo "Data de Nascimento"
    Então deve ocorrer <resultado>

    Exemplos:
      | data         | resultado                         |
      | 01/01/1990   | Data aceita                       |
      | 31/02/2000   | Data inválida                     |
      |              | Campo obrigatório não preenchido  |
      | 1990-01-01   | Formato inválido                  |

  Esquema do Cenário: Validação da seleção de gênero
    Dado que o sistema está funcional e o usuário acessa o formulário de cadastro
    Quando ele seleciona a opção <gênero> no campo "Gênero"
    Então deve ocorrer <resultado>

    Exemplos:
      | gênero              | resultado                      |
      | Masculino           | Gênero selecionado com sucesso |
      | Feminino            | Gênero selecionado com sucesso |
      | Outro               | Gênero selecionado com sucesso |
      | Prefiro não dizer   | Gênero selecionado com sucesso |
      |                     | Nenhuma opção selecionada      |