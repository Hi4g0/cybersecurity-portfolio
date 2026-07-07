# Semana 3 — Parte 2

## Automação e Monitoramento de Processos com Python

### Conceitos estudados
- Automação de auditoria de segurança (Blue Team / SecOps)
- Manipulação de caminhos e verificação de arquivos via biblioteca `os`
- Validação de integridade de logs e tratamento de estruturas condicionais (`if/else`)
- Redução de falso-positivo através de análise de artefatos remanescentes

### Projeto desenvolvido
**CyberScout - Automated Audit Tool (Módulo Interno)**

Desenvolvimento de um script em Python focado em auditoria automatizada para identificar a existência de arquivos de persistência gerados por tarefas Cron anteriores, exibindo o conteúdo e o histórico de execuções de forma estruturada.

### Exemplo real

```text
┌──(hiago㉿kali)-[~]
└─$ python3 checador_soc.py
=========================================================
          CYBERSCOUT - AUTOMATED AUDIT TOOL
=========================================================
[!] ATENÇÃO: Arquivo de log encontrado em: /home/hiago/alerta_cron.txt
[-] Analisando conteúdo do artefato...
---------------------------------------------------------
Tarefa Cron Ativa em 2026
Tarefa Cron Ativa em 2026
---------------------------------------------------------
[+] Auditoria concluída: Atividades registradas acima.
=========================================================
```
