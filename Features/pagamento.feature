Funcionalidade: Cadastro de informações de pagamento
  Como um usuário
  Quero informar e confirmar minha senha corretamente
  Para que o sistema valide meus dados de pagamento com segurança

  Esquema do Cenário: Validação dos campos Senha e Confirmar Senha
    Dado que o sistema está funcional e o usuário opta por informar dados de pagamento
    Quando ele digita uma <senha> no campo "Senha"
    E digita uma <confirmacao> no campo "Confirmar Senha"
    Então deve ocorrer <resultado>

    Exemplos:
      | senha     | confirmacao | resultado                             |
      | segura123 | segura123   | Senha validada com sucesso            |
      | segura123 | segura321   | Senhas não coincidem                  |
      |           | segura123   | Campo de senha não preenchido         |
      | segura123 |             | Campo de confirmação não preenchido   |
      | 123       | 123         | Senha muito curta                     |