## Desafio 2

### Introdução

Agora que os desenvolvedores começaram a usar containers, um novo problema surgiu: os logs desaparecem toda vez que o container é reiniciado. O time de observabilidade está preocupado, pois não consegue monitorar os acessos ao sistema.

### Missão

Criar um volume para armazenar os logs do Nginx de forma persistente.

  - Criar um volume Docker chamado nginx_logs.
  - Executar um contêiner nginx, montando o volume nginx_logs no dirétorio /var/log/nginx do container e expondo a página web na porta 8080 da máquina local.
  - Gerar logs acessando a página hospedada no nginx executando localmente o comando curl http://localhost:8080.
  - Parar e remover o contêiner.
  - Criar um novo contêiner e validar que os logs antigos ainda existem.



O script deve ser adicionado no diretório 02-container-logs dentro do repositório com o nome `nginx_volume_container.sh`:
![alt text](<02-container-logs.png>)

### Solução


### Como executar o script

1. Dê permissão de execução ao script:
  ```bash
  chmod +x nginx_volume_container.sh
  ```

2. Execute o script:
  ```bash
  ./nginx_volume_container.sh
  ```

3. Se aparecer erro de permissão do Docker, adicione seu usuário ao grupo:
  ```bash
  sudo usermod -aG docker $USER
  ```
  Depois, faça logout e login novamente para aplicar a mudança.
