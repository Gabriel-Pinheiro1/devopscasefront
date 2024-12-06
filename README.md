# Devops Case - Frontend

## Desafio 01 - Dockerizar a aplicação


Este projeto foi dockerizado  utilizando duas imagens principais:

1. `Imagem Node.js (versão 18):` Utilizada para construir e preparar a aplicação, instalando as dependências e realizando o build do projeto.
2. `Imagem Nginx (Alpine):` Responsável por servir a aplicação em produção, copiando os arquivos gerados pelo build para o diretório correto do Nginx.

O Dockerfile segue o padrão de multi-stage builds, onde o primeiro estágio realiza a construção da aplicação e o segundo estágio utiliza o Nginx para hospedar a versão final da aplicação.

### Processo

- O Node.js é usado para instalar dependências e construir a aplicação.
- O Nginx serve a aplicação construída, expondo a porta 80 para acesso.

### Repositório da Integração (Back + Front + Db): https://github.com/Gabriel-Pinheiro1/DevopsCase-Integracao
  

## Desafio 02: Criar um workflow de CI/CD

O workflow de CI/CD configurado no **GitHub Actions** automatiza o processo de integração e entrega contínua da aplicação, garantindo um deploy eficiente e sem intervenções manuais.

### Funcionamento

1. **Disparo Automático**  
   O workflow é ativado sempre que há um **push** no branch principal (`main`), assegurando que as alterações mais recentes sejam enviadas automaticamente para o ambiente de produção.

2. **Execução das Etapas**
   - **Checkout do Código**: O repositório é clonado para o ambiente da Action, permitindo acesso aos arquivos necessários.
   - **Configuração do Node.js**: Define a versão do Node.js utilizada no projeto para garantir compatibilidade.
   - **Instalação de Dependências**: Instala todas as bibliotecas e pacotes necessários para o funcionamento da aplicação.
   - **Build da Aplicação**: Constrói o projeto utilizando os comandos do **Vercel**, otimizando os arquivos para produção.
   - **Deploy Automático**: Publica a aplicação no **Vercel**, a tornando acessível em um ambiente de produção.

3. **Monitoramento do Processo**  
   Todo o workflow pode ser acompanhado pela aba **Actions** no repositório do GitHub. Ela detalha cada etapa, informando logs e o status do processo, desde o início até a publicação bem sucedida.

### Acesse o site em: https://devopscasefront-eta.vercel.app/



