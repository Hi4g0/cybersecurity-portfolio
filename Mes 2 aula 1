# 🛡️ Lab 02: Controle de Acesso e Auditoria de Privilégios no Linux

## 1. Cenário e Contexto
O objetivo deste laboratório foi aplicar o Princípio do Privilégio Mínimo (Hardening) em sistemas Linux Ubuntu. Foi simulada a exposição e mitigação de um arquivo contendo credenciais críticas da empresa, seguido por uma varredura de Threat Hunting no sistema operacional para identificar binários com permissões especiais ativas (SUID).

---

## 2. Metodologia (O "Como")

### Parte A: Mitigação de Permissões Críticas
1. Criou-se um arquivo sensível (`senhas_criticas.txt`) simulando chaves de API/Senhas.
2. Identificou-se que a permissão padrão permitia leitura por usuários sem privilégios (`Others` possuía `r--`).
3. Foi simulado um ataque de leitura utilizando o usuário nativo de baixo privilégio `nobody`.
4. Aplicou-se o Hardening alterando a máscara de permissões para Octal `600` (Apenas o dono lê e escreve).
5. Transferiu-se a propriedade do arquivo para o usuário soberano do sistema (`root:root`) usando o comando `chown`.

```bash
# Criando e alterando permissões
echo "CHAVE_SECRETA_DA_EMPRESA_12345" > senhas_criticas.txt
chmod 600 senhas_criticas.txt

# Alterando o dono do arquivo
sudo chown root:root senhas_criticas.txt  
