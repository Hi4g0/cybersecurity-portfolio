# 🛡️ Lab 03: Arquitetura de Logging, Filtragem Indexada e Triagem de Erros

## 1. Cenário e Contexto
O objetivo deste laboratório foi compreender a fundo a arquitetura de geração, encaminhamento e armazenamento de logs no ecossistema Linux (`systemd-journald` e `rsyslogd`). A prática focou na otimização de busca através de filtragem nativa binária (evitando o overhead de processamento do comando `grep`) e na realização de uma triagem forense de erros de inicialização para diferenciar anomalias de hardware de incidentes de segurança reais.

---

## 2. Fundamentos da Arquitetura de Logs e Dúvidas Sanadas

### Como funciona o fluxo de dados?
O Linux opera o subsistema de logs em duas camadas que trabalham em conjunto:
* **`systemd-journald`:** É o coletor primário. Ele captura mensagens diretamente do kernel e dos serviços assim que o sistema inicia. Armazena os dados em formato **binário indexado** (`/run/log/journal/`). Por ser binário, possui metadados ricos (como UID, PID, Unit) que permitem buscas ultra rápidas, além de impedir que um invasor altere as linhas de log facilmente com um editor de texto comum.
* **`rsyslogd`:** É o daemon legado que atua em paralelo. Ele recebe uma cópia dos dados do `journald`, traduz o formato binário em texto simples (ASCII) e os distribui nos arquivos tradicionais sob o diretório `/var/log/` (como `auth.log` e `syslog`).

### Qual a lógica dos códigos de filtragem no Terminal?
Ao executar o comando `sudo journalctl -p 3 -xb --since "today"`, aplicou-se um conceito de **Funil Lógico**:
* `journalctl`: Invoca o leitor do banco de dados binário.
* `-p 3`: Filtra estritamente pela prioridade número 3 (escala Syslog), que significa **`Error`** (Erro). Ignora avisos informativos e foca no que falhou.
* `-xb`: Associa o log aos dados do *boot* atual da máquina, incluindo explicações extras do sistema.
* `--since "today"`: Restringe o escopo temporal para eventos ocorridos desde a meia-noite do dia atual.

---

## 3. Evidências do Terminal (Logs Capturados)

### I. Investigação do Histórico de Sessões (`journalctl _COMM=sudo`)
Comando executado para validar o encerramento de sessão disparado pelo comando de limpeza de credenciais `sudo -k`:

```text
hiago@hiago-To-be-filled-by-O-E-M:~/Downloads$ sudo journalctl _COMM=sudo --since "10 minutes ago" 
jun 02 14:46:47 hiago-To-be-filled-by-O-E-M sudo[8973]: pam_unix(sudo:session): session closed for user >
jun 02 14:55:30 hiago-To-be-filled-by-O-E-M sudo[9365]: pam_unix(sudo:session): session opened for user >
jun 02 14:55:30 hiago-To-be-filled-by-O-E-M sudo[9365]: hiago : TTY=/dev/pts/0 ; PWD=/home/hiago/Downloa>
