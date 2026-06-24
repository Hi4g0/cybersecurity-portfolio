#!/bin/bash

# Script DevOps para criar documentação de aulas - Semana 3
# Autor: Cybersecurity Portfolio
# Descrição: Automatiza a criação de pasta e arquivos Markdown para aulas de Triagem de Logs

# Criar pasta Semana-3 caso não exista
mkdir -p Semana-3

# Criar Arquivo 1: Aula-4.md
cat > Semana-3/Aula-4.md << 'EOF'
# Semana 3 - Aula 4: Identificação de Padrões e Códigos de Status HTTP


## Conceitos Teóricos

* **200 OK**: Acesso permitido. Em cenários de força bruta, indica sucesso na invasão.
* **401 Unauthorized**: Falha de autenticação (senha errada).
* **403 Forbidden**: Acesso negado. Indica que o atacante tentou acessar diretórios restritos ou confidenciais.
* **404 Not Found**: Página não encontrada. Indica varredura (scanning) ativa onde o atacante 'chuta' nomes de arquivos comuns.


## Atividade Prática

Análise visual de anomalias em logs brutos e identificação de requisições maliciosas direcionadas a arquivos críticos do sistema, como o `/etc/passwd`.
EOF

# Criar Arquivo 2: Aula-5.md
cat > Semana-3/Aula-5.md << 'EOF'
# Semana 3 - Aula 5: Introdução à Lupa do Analista (grep)


## Conceitos Teóricos

Uso de ferramentas nativas do Linux para filtrar grandes volumes de dados. O comando `grep` funciona como um mecanismo de busca avançado que isola o ruído do tráfego normal e expõe apenas as linhas suspeitas.

## Comandos Práticos

Filtro de logs de servidores para isolar apenas tentativas de acesso que resultaram em bloqueio (403):
```bash
grep "403" web_server.log
```

Rastreamento completo do histórico de ações de um IP suspeito:
```bash
grep "185.220.101.5" web_server.log
```
EOF

# Criar Arquivo 3: Aula-6.md
cat > Semana-3/Aula-6.md << 'EOF'
# Semana 3 - Aula 6: Automação e Geração de Rankings (awk, sort, uniq)


## Conceitos Teóricos

Aprendi a construir pipelines de comando utilizando o operador `|` (Pipe) para passar a saída de um comando como entrada para o próximo, criando relatórios estatísticos instantâneos.

## Comandos Práticos

Isolamento da primeira coluna de um log (IPs), ordenação e contagem de requisições repetidas:
```bash
awk '{print $1}' web_server.log | sort | uniq -c
```

Isolamento e contagem dos recursos/página web mais visados pelos atacantes:
```bash
awk '{print $4}' web_server.log | sort | uniq -c
```
EOF

# Mensagem de sucesso
echo "✓ Script executado com sucesso!"
echo "✓ Pasta 'Semana-3' criada (ou já existia)"
echo "✓ Arquivo 'Aula-4.md' criado"
echo "✓ Arquivo 'Aula-5.md' criado"
echo "✓ Arquivo 'Aula-6.md' criado"
echo ""
echo "Próximos passos:"
echo "1. git add Semana-3/"
echo "2. git commit -m 'Add Week 3 documentation: HTTP status codes, grep, and log automation'"
echo "3. git push origin main"
