#!/bin/bash

echo "Iniciando o projeto..."

if ! command -v docker &> /dev/null
then
	echo "Docker não encontrado"
	exit
fi

if [ ! -f Dockerfile ]; then
	echo "Dockerfile não encontrado."
	exit
fi

echo "Construindo imagem Docker..."
docker build -t projeto-DIO .

echo "Iniciando container..."
docker run -d -p 8080:8080 --name meu-container projeto_DIO

echo "Projeto iniciado. Acesse com http://localhost:8080"
