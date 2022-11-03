## criar o projeto
sls 

# Node.js - HTTP API
# <informa nome do projeto>
# Serverless Dashboard? No
# Deploy? Yes

# na pasta do projeto
npm init -y

# instalar dependências
npm i aws-sdk@2
npm i -D nodemon@2
npm i -D serverless-offline@9.2 #simular que a aplicação é como se fosse uma aplica;áo web
npm i -D serverless@3

# registra o plugin serverless-offline no arquivo serverless
plugins: 
 - serverless-offline

## atualiza os scripts:
    "start": "npx nodemon --exec npm run offline",
    "offline": "npx sls offline start --host 0.0.0.0",

# roda o comando npm start para rodar o servidor.

# em outro terminal roda o comando abaixo
curl http://0.0.0.0:3000/

## para criar bucket
# Pasta scripts
# arquivo create-bucket.sh -> escreve do jeito que ta lá, e roda o comando abaixo:
sh scripts/create-bucket.sh

## Para ver se o docker ta rodando 
docker ps   

# rodar o docker-compose up
docker-compose up

## rodar o localhost
curl "0.0.0.0:4566/health"

## formatar o resultado no formato json
curl "0.0.0.0:4566/health" | jq

## fazer o servidor olhar para o localstack ao invés de olhar para a aws
# vai alter o arquivo create-bucket.sh 