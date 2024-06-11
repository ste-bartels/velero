#VELERO

Documentação oficial
https://velero.io/

Mas se vc quer aquele pulo do gato para implantação isso acha aqui.
1- Criar um s3
2 - criar usuário de serviço para o Velero acessoar ao s3
3 - criar politica (exemplo nos arquivos do repo) e anexar ao usuário
4- criar access key e secret key do usuário 
5 - instalar velero com as credenciais acima
6- criar backup teste e verificar s3 (verifique se foi criado o backup no s3)
