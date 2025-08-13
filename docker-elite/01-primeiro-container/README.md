## Desafio 1

### Introdução

O CTO precisa que a equipe tenha um contato inicial com Docker. Mas ninguém quer parar o que está fazendo para aprender algo "difícil". Então, seu primeiro desafio é mostrar como rodar um container na prática e quebrar esse mito.

### Missão

Criar um script para rodar um container básico do Nginx e outros comandos básicos, mostrando que Docker é simples e eficiente.

Crie um script `run_containers.sh` que:
  - Baixe a imagem nginx.
  - Inicie um contêiner nginx, nomeando-o meu-servidor.
  - Liste todos os contêineres em execução.
  - Pare e remova o contêiner.
  - Liste todos os containers.

O script deve ser adicionado no diretório 01-primeiro-container dentro do repositório:
![alt text](<01-primeiro-container.png>)


### Solução


### Como executar o script

1. Dê permissão de execução ao script:
  ```bash
  chmod +x run_containers.sh
  ```

2. Execute o script:
  ```bash
  ./run_containers.sh
  ```

3. Se aparecer erro de permissão do Docker, adicione seu usuário ao grupo:
  ```bash
  sudo usermod -aG docker $USER
  ```
  Depois, faça logout e login novamente para aplicar a mudança.
