# sigaapp

## Descrição 
Aplicativo para mudar a interface do SIGAA

## Instalação
1. Clone o repositório
2. Instale as dependências
```bash
flutter pub get
```
3. Rode o aplicativo
```bash
flutter run
```
# reniao agora
- definir features
- telas
- pq API
- como funciona, onde hospedar e como rodar
- como fazer o app


## Requisto de projeto
- Ofline mode: O app abre com os últimos dados que vieram da API, caso não tenha conexão com a internet.
- Ver matérias
- Ver notas
- ver frenquencia 
- ver home page info
- principal por disciplina
- como atualizar os dados!!!!
  SEMPRE que o usuário nao tiver nada em cache, vai solicitar da api, que vai retornar todos os dados em um JSON. Mas se tiver cache nunca vai solictidar da api, a menos que o usuário apertar para atualizar.
- Ultima atualização dos dados.
- Tema SIGAA e tema dark mode
- botao para calendario academico

<!-- parte 2 -->
- atualizar dados em background
- noticias
- alteração de tarefas
- novas tarefas
- Notificações: Notificar o usuário sobre novas notas, faltas, etc.
- baixar arquivos



## Telas
- [ ] Tela de login 
    Usuário entra com sua senha do SIGAA que vai ficar salvo em cache no dispositivo. O ultimos dados que retornaram da API.
- [ ] Home Page
    - Disciplinas (local, horario)
    - Minhas atividades

- [ ] Perfil/Ajustes
    - Carga horaria
    - Indice academico
    - matricula 
    - curso
    - status
    - troca de tema
    - Sair
    
- [ ] Cada Disciplina
    - Princial Noticias
        Arquivos e registros dentro da disciplina
    - Notas
        Mostra a tabela de notas
    - Frequencia
        Mostrar a tabela de frequencia e 
        suas porcentagem. 
    - Referencias
        Mostrar os arquivos que o professor disponibilizou
    - Atividades
        Mostrar tabela de avaliações
        Mostrar tabela de tarefas

- [ ] Notas Sumário, todas as notas de uma vez
- [ ] Frequência Sumário, todas as frequências de uma vez  
