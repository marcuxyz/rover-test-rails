Este projeto foi divido em duas partes:

- Uma usando apenas Ruby puro + rspec para execução de testes
- Segunda parte utilizando Rails para receber um arquivo e imprimir o resultado em tela

A primeira parte pode ser encontrada através [deste link](https://github.com/marcuxyz/test-rovers-ruby-only).

# Requisitos

- Rails 7
- Ruby 3.1.2

# Execução

### Docker

Você pode executar este projeto com o Docker. Então é necessário que você tenha o docker instalado, antes de tentar executar os comandos logo abaixo.

Para construir uma imagem docker e executar o servidor execute o s comandos a seguir:

```bash
$ docker build -t marcuxyz/rovers-rails .
$ docker run -p 3000:3000 -it marcuxyz/rovers-rails rails s -b 0.0.0.0
```

> Usando um navegador, você pode acessar o site através do endereço: http://localhost:3000

### Sem docker

Para executar esse projeto sem docker, valide se você tem instalado em seu computador
as ferramentas que constam no requisitos. Tendo instaladas, execute o comando `bundle install` em seu terminal para instalar a gems necessárias.

E então, você pode executar o comando: `rails s` para levantar o servidor rails local e acessa-lo através de um navegador.

# Testes

### Docker

Ainda estando dentro do container, utilize o comando 

```
$ docker run -it marcuxyz/rovers-rails rspec 
```
para executar os testes. 


### Sem docker

Sem docker, apenas execute o comando `rspec` em seu termainal para rodar os testes.

# Screenshot

<img width="1324" alt="Screen Shot 2022-09-14 at 00 31 02" src="https://user-images.githubusercontent.com/9499562/190055908-5788e649-216c-44a3-aa8d-39f0fa68b95e.png">
