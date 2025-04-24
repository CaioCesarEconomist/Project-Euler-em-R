#!/bin/bash

# 📝 Script para criar um novo arquivo baseado no template

if [ -z "$1" ]; then
  echo "❗ Use: ./new_problem.sh 7"
  exit 1
fi

PROBLEM_NUM=$1
TEMPLATE="template.R"
DEST="problem${PROBLEM_NUM}.R"

if [ ! -f "$TEMPLATE" ]; then
  echo "❗ template.R não encontrado!"
  exit 1
fi

cp "$TEMPLATE" "$DEST"
sed -i "s/Problem X/Problem ${PROBLEM_NUM}/g" "$DEST"
sed -i "s/problem=X/problem=${PROBLEM_NUM}/g" "$DEST"

echo "✅ Criado: $DEST"
