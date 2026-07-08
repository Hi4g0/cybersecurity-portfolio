# 🛡️ Lab 05: Controle de Acesso e Auditoria de Privilégios no Linux

## 1. Cenário e Contexto
O objetivo deste laboratório foi aplicar o Princípio do Privilégio Mínimo (Hardening) em sistemas Linux Ubuntu.

---

## 2. Metodologia (O "Como")

### Parte A: Mitigação de Permissões Críticas
1. Criou-se um arquivo sensível (`senhas_criticas.txt`) simulando chaves de API/Senhas.
2. Identificou-se que a permissão padrão permitia leitura por usuários sem privilégios.
3. Aplicou-se o Hardening alterando a máscara de permissões para Octal `600`.

```bash
# Criando e alterando permissões
echo "CHAVE_SECRETA_DA_EMPRESA_12345" > senhas_criticas.txt
chmod 600 senhas_criticas.txt
sudo chown root:root senhas_criticas.txt
```
