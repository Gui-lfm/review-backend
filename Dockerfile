# Dockerfile
FROM node:16-alpine

# Ajustar permissões e criar diretório de trabalho
RUN mkdir -p /app && chown -R node:node /app

# Definir diretório de trabalho
WORKDIR /app

# Instalar TypeScript globalmente com permissões de root
RUN npm install -g typescript

# Copiar arquivos de configuração e instalar dependências
COPY --chown=node:node package*.json ./
RUN npm install

# Copiar o restante do código
COPY --chown=node:node . .

# Definir o usuário node para execução
USER node

# Comando padrão
CMD ["sh"]
