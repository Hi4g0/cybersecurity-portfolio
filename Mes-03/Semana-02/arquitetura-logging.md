# 🛡️ Lab 03: Arquitetura de Logging, Filtragem Indexada e Triagem de Erros

## 1. Cenário e Contexto
O objetivo deste laboratório foi compreender a fundo a arquitetura de geração, encaminhamento e armazenamento de logs no ecossistema Linux.

---

## 2. Fundamentos da Arquitetura de Logs e Dúvidas Sanadas

### Como funciona o fluxo de dados?
O Linux opera o subsistema de logs em duas camadas que trabalham em conjunto:
* **`systemd-journald`:** É o coletor primário. Ele captura mensagens diretamente do kernel.
* **`rsyslogd`:** É o daemon legado que atua em paralelo.

### Qual a lógica dos códigos de filtragem no Terminal?
Ao executar o comando `sudo journalctl -p 3 -xb --since "today"`, aplicou-se um conceito de **Funil Lógico**.

---

## 3. Evidências do Terminal (Logs Capturados)

### I. Investigação do Histórico de Sessões (`journalctl _COMM=sudo`)
Comando executado para validar o encerramento de sessão:

```text
hiago@hiago-To-be-filled-by-O-E-M:~/Downloads$ sudo journalctl _COMM=sudo --since "10 minutes ago"
jun 02 14:46:47 hiago-To-be-filled-by-O-E-M sudo[8973]: pam_unix(sudo:session): session closed for user
jun 02 14:55:30 hiago-To-be-filled-by-O-E-M sudo[9365]: pam_unix(sudo:session): session opened for user
```
