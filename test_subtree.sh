#!/bin/bash

# Adiciona o repositório remoto do feature_repo como um subtree
echo "Adicionando feature_repo como subtree no main_repo"
git remote add feature_repo https://github.com/LuizGuzzo/feature_repo_subtree.git
git fetch feature_repo

# Adiciona a branch main do feature_repo como uma subtree no diretório "feature"
git subtree add --prefix=feature feature_repo main --squash

# Exibe o conteúdo da pasta feature para garantir que foi adicionada
echo "Conteúdo do diretório feature após adicionar como subtree:"
ls feature

# Commit das mudanças
git commit -m "Adicionado feature_repo como subtree"

# Agora simula uma atualização no feature_repo
echo "Puxando atualizações do feature_repo"
git subtree pull --prefix=feature feature_repo main --squash

# Exibe novamente o conteúdo atualizado
echo "Conteúdo do diretório feature após atualização do subtree:"
ls feature
