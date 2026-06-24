#!/bin/bash

# Script de Automação para Criar Arquivos de Documentação - Semana 3
# Criado para facilitar a organização de aulas sobre Triagem de Logs
# Execute este script no seu repositório local do GitHub

# Cores para output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Criar pasta Semana-3 caso não exista
PASTA="Semana-3"
if [ ! -d "$PASTA" ]; then
    mkdir -p "$PASTA"
    echo -e "${GREEN}✓ Pasta '$PASTA' criada com sucesso!${NC}"
else
    echo -e "${BLUE}→ Pasta '$PASTA' já existe${NC}"
fi

# ===== CRIAÇÃO DO ARQUIVO 1: Aula-4.md =====
cat > "$PASTA/Aula-4.md" << 'EOF'
# Semana 3 - Aula 4: Identificação de Padrões e Códigos de Status HTTP

## Conceitos Teóricos

### Códigos de Status HTTP e Suas Implicações de Segurança

- **200 OK**: Acesso permitido. Em cenários de força bruta, indica sucesso na invasão.

- **401 Unauthorized**: Falha de autenticação (senha errada).

- **403 Forbidden**: Acesso negado. Indica que o atacante tentou acessar diretórios restritos ou confidenciais.

- **404 Not Found**: Página não encontrada. Indica varredura (scanning) ativa onde o atacante 'chuta' nomes de arquivos comuns.

## Atividade Prática

Análise visual de anomalias em logs brutos e identificação de requisições maliciosas direcionadas a arquivos críticos do sistema, como o `/etc/passwd`.

### Exercício Proposto

1. Examine logs de servidor brutos
2. Identifique padrões suspeitos de acesso
3. Correlacione códigos HTTP com comportamentos maliciosos
4. Documente tentativas de acesso a recursos críticos

---

**Data de Criação**: 2026-06-24  
**Duração**: 1 aula  
**Nível**: Iniciante-Intermediário
EOF

echo -e "${GREEN}✓ Arquivo 'Aula-4.md' criado com sucesso!${NC}"

# ===== CRIAÇÃO DO ARQUIVO 2: Aula-5.md =====
cat > "$PASTA/Aula-5.md" << 'EOF'
# Semana 3 - Aula 5: Introdução à Lupa do Analista (grep)

## Conceitos Teóricos

### O Comando grep: Sua Ferramenta de Busca Avançada

Uso de ferramentas nativas do Linux para filtrar grandes volumes de dados. O comando `grep` funciona como um mecanismo de busca avançado que isola o ruído do tráfego normal e expõe apenas as linhas suspeitas.

O grep é essencial para:
- Filtrar dados em tempo real
- Buscar padrões específicos em arquivos
- Isolar eventos de interesse em logs massivos
- Identificar comportamentos anormais rapidamente

## Comandos Práticos

### Filtro 1: Isolando Erros 403

Filtro de logs de servidores para isolar apenas tentativas de acesso que resultaram em bloqueio (403):

```bash
grep "403" web_server.log
```

Este comando retorna todas as linhas contendo "403", revelando tentativas bloqueadas de acesso.

### Filtro 2: Rastreamento de IP Suspeito

Rastreamento completo do histórico de ações de um IP suspeito:

```bash
grep "185.220.101.5" web_server.log
```

Substitua o IP com aquele que você deseja investigar. Este comando mostra toda a atividade deste IP no servidor.

## Exercício Proposto

1. Execute os comandos acima em seus logs de servidor
2. Analise o padrão de comportamento do IP
3. Identifique múltiplos IPs suspeitos
4. Compare frequência e tipo de acesso entre eles

---

**Data de Criação**: 2026-06-24  
**Duração**: 1 aula  
**Nível**: Iniciante-Intermediário
EOF

echo -e "${GREEN}✓ Arquivo 'Aula-5.md' criado com sucesso!${NC}"

# ===== CRIAÇÃO DO ARQUIVO 3: Aula-6.md =====
cat > "$PASTA/Aula-6.md" << 'EOF'
# Semana 3 - Aula 6: Automação e Geração de Rankings (awk, sort, uniq)

## Conceitos Teóricos

### Pipelines de Comando: A Força da Automação

Aprendi a construir pipelines de comando utilizando o operador `|` (Pipe) para passar a saída de um comando como entrada para o próximo, criando relatórios estatísticos instantâneos.

A combinação de ferramentas simples gera poder exponencial:
- **awk**: Processamento e manipulação de campos de texto
- **sort**: Ordenação de dados
- **uniq**: Remoção de duplicatas e contagem de ocorrências
- **Pipe (|)**: Concatenação de operações

## Comandos Práticos

### Comando 1: Ranking de IPs por Volume de Requisições

Isolamento da primeira coluna de um log (IPs), ordenação e contagem de requisições repetidas:

```bash
awk '{print $1}' web_server.log | sort | uniq -c
```

**O que esse comando faz**:
1. `awk '{print $1}'` - Extrai o primeiro campo (IP de origem)
2. `sort` - Ordena os IPs
3. `uniq -c` - Conta e remove duplicatas

**Saída típica**:
```
    150 192.168.1.100
    89  185.220.101.5
    45  10.0.0.50
```

### Comando 2: Recursos Web Mais Visados

Isolamento e contagem dos recursos/página web mais visados pelos atacantes:

```bash
awk '{print $4}' web_server.log | sort | uniq -c
```

**O que esse comando faz**:
1. `awk '{print $4}'` - Extrai o quarto campo (recurso/página solicitada)
2. `sort` - Ordena os recursos
3. `uniq -c` - Conta ocorrências

**Saída típica**:
```
    342 /admin
    198 /login
    156 /etc/passwd
    89  /config.php
```

## Exercício Proposto

1. Execute ambos os comandos em seus logs
2. Identifique o IP mais ativo
3. Identifique o recurso mais visado
4. Combine os dados para criar um perfil de ataque
5. Crie variações dos comandos para análises adicionais

---

**Data de Criação**: 2026-06-24  
**Duração**: 1 aula  
**Nível**: Intermediário
EOF

echo -e "${GREEN}✓ Arquivo 'Aula-6.md' criado com sucesso!${NC}"

# ===== MENSAGEM FINAL =====
echo ""
echo -e "${BLUE}════════════════════════════════════════════════════════${NC}"
echo -e "${GREEN}✓ AUTOMAÇÃO CONCLUÍDA COM SUCESSO!${NC}"
echo -e "${BLUE}════════════════════════════════════════════════════════${NC}"
echo ""
echo "Arquivos criados:"
echo -e "${GREEN}  ✓${NC} $PASTA/Aula-4.md"
echo -e "${GREEN}  ✓${NC} $PASTA/Aula-5.md"
echo -e "${GREEN}  ✓${NC} $PASTA/Aula-6.md"
echo ""
echo "Próximos passos:"
echo "  1. git add Semana-3/"
echo "  2. git commit -m 'Add Semana-3 documentation - Log Analysis'"
echo "  3. git push origin main"
echo ""
