## Chinshop
Ecommerce de ração gourmet para Chinchilas. A aplicação tem um usuário apenas com permissão de cadastro de produtos e outro usuário com função de administrador.

## Como criar usuário com função admin

Rails console
```bash
rails c
```

Cadastrar novo usuário
```bash
User.create(email: "jonh@wick.com", password:"123456", admin: true)
```

