# deploy-app-kubernetes-gcp
Deploy em cluster em nuvem utilizando o Kubernates de uma aplicação-exemplo

## Objetivo
Utilizar script para criação automatizada de imagens de docker de aplicação e banco de dados com os necessários serviços para geração de 
um cluster kubernetes utilizando a plataforma da Google Cloud que opere sobre os mesmos.

## Configuração
Após rodar o script e confirmar a criação do cluster é necessário pegar o IP externo gerado pelo serviço do backend para acesso utilizando o frontend modificando 
o arquivo javascript **js.js**, linha 8, parâmentro **url** que deve conter o valor **htt://ip_da_aplicação** dentro das aspas.



