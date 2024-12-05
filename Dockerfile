# Imagem do node
FROM node:18 AS build
WORKDIR /app
COPY package*.json ./

# Instala as depedências do projeto
RUN npm install
COPY . .

# Buildar o projeto
RUN npm run build

# Imagem do Nginx
FROM nginx:alpine
COPY --from=build /app/dist /usr/share/nginx/html

# Porta padrão do Nginx
EXPOSE 80

# comandos CMD para inicializar o Nginx
CMD ["nginx", "-g", "daemon off;"]