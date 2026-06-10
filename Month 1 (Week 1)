"""# 🛡️ SOC Analyst Learning Journey - Month 1 (Week 1)

Repositório dedicado ao registro prático da minha jornada de estudos focada em **Segurança Defensiva (Blue Team)** e **Administração de Sistemas Linux**.

---

## 🇧🇷 Resumo do Dia (Português)

### 📝 O que eu aprendi hoje:
1. **Conceito de Linux:** Compreendi por que o Linux é a espinha dorsal do SOC (Blue Team), rodando em mais de 90% dos servidores mundiais e ferramentas de monitoramento como o Splunk.
2. **Navegação e Manipulação de Arquivos:** Dominei os comandos básicos para me mover pelo sistema através do terminal, criar diretórios organizados e gerar arquivos de logs vazios para simulações.
3. **Análise e Filtragem de Conteúdo:** Aprendi a ler arquivos diretamente pelo terminal e, o mais importante para o SOC, a utilizar filtros de strings para caçar anomalias ou alertas específicos em arquivos de texto massivos.
4. **Gerenciamento de Permissões (Matemática do Chmod):** Entendi como funciona o controle de acesso no Linux baseado na tríade *Dono (User)*, *Grupo (Group)* e *Outros (Others)*, utilizando a soma de bits: `4 (Read)`, `2 (Write)`, e `1 (Execute)`. Pratiquei a mitigação de riscos alterando arquivos vulneráveis (`777`) para permissões seguras (`600` e `644`).
5. **Infraestrutura de Rede, Processos e Serviços:** Aprendi a identificar o endereço IP da minha máquina, testar a conectividade básica com hosts externos através do protocolo ICMP, listar processos ativos para caçar possíveis malwares em execução e monitorar o status de serviços essenciais do sistema em segundo plano.

### 💻 Comandos Dominados:
* `pwd` - Imprime o diretório de trabalho atual.
* `mkdir` - Cria uma nova pasta/diretório.
* `cd` - Muda de diretório (navegação).
* `touch` - Cria um arquivo vazio.
* `ls -la` - Lista todos os arquivos (incluindo ocultos) em formato detalhado.
* `cat` - Exibe todo o conteúdo de um arquivo na tela.
* `grep` - Filtra e busca por termos específicos dentro de arquivos (utilizando flags como `-i` para ignorar maiúsculas/minúsculas e `-v` para inverter a busca).
* `chmod` - Altera as permissões de acesso de arquivos e pastas.
* `chown` - Altera o proprietário (dono) e o grupo de um arquivo.
* `ip a` - Exibe as interfaces de rede e os endereços IP.
* `ping` - Testa a conectividade com um host na rede enviando pacotes ICMP (flag `-c` limita a contagem).
* `ps aux` - Lista todos os processos em execução no sistema.
* `systemctl status` - Exibe o estado atual de um serviço do sistema (se está ativo ou parado).

---

## 🇺🇸 Daily Summary (English)

### 📝 What I Learned Today:
1. **Linux Core Concepts:** Understood why Linux is the backbone of SOC (Blue Team) operations, powering over 90% of worldwide servers and critical monitoring tools like Splunk.
2. **Navigation & File Manipulation:** Mastered basic terminal commands to navigate the file system, build structured directories, and generate empty log files for incident simulations.
3. **Content Analysis & Filtering:** Learned how to read file contents directly from the terminal and, crucially for a SOC Analyst, how to isolate strings to hunt down anomalies or specific alerts in massive text logs.
4. **Permissions Management (Chmod Math):** Learned Linux access control mechanisms based on the *User*, *Group*, and *Others* triad, utilizing bitmask math: `4 (Read)`, `2 (Write)`, and `1 (Execute)`. Practiced risk mitigation by hardening vulnerable files (`777`) into secure states (`600` and `644`).
5. **Networking, Processes & Services Infrastructure:** Learned how to discover my local IP address, verify network connectivity with remote hosts using ICMP packets, list running processes to hunt malicious payloads, and inspect the state of background system daemons.

### 💻 Mastered Commands:
* `pwd` - Print working directory.
* `mkdir` - Make directory.
* `cd` - Change directory.
* `touch` - Create an empty file.
* `ls -la` - List directory contents with detailed view and hidden files.
* `cat` - Concatenate and display file content.
* `grep` - Search and filter specific patterns inside files (using flags like `-i` to ignore case and `-v` to invert match).
* `chmod` - Change file modes or access permissions.
* `chown` - Change file owner and group.
* `ip a` - Display network interfaces and IP addresses.
* `ping` - Send ICMP ECHO_REQUEST to network hosts (using `-c` to limit packet count).
* `ps aux` - Report a snapshot of current running processes.
* `systemctl status` - Inspect the state of a system service (active/running or stopped).

---

## 🪵 Terminal Logs / Evidências Práticas

### 1. Navegação, Criação e Filtros (File Management & Filtering)
Saída de código
File generated successfully.

```bash
hiago@hiago-To-be-filled-by-O-E-M:~$ pwd
/home/hiago

hiago@hiago-To-be-filled-by-O-E-M:~$ mkdir dia01_soc
hiago@hiago-To-be-filled-by-O-E-M:~$ cd dia01_soc

hiago@hiago-To-be-filled-by-O-E-M:~/dia01_soc$ touch falso_alert.log 
hiago@hiago-To-be-filled-by-O-E-M:~/dia01_soc$ ls -la
total 8
drwxrwxr-x  2 hiago hiago 4096 Jun 10 14:38 .
drwxr-x--- 29 hiago hiago 4096 Jun 10 14:37 ..
-rw-rw-r--  1 hiago hiago    0 Jun 10 14:38 falso_alert.log

hiago@hiago-To-be-filled-by-O-E-M:~/dia01_soc$ echo "Erro: Tentativa de login falhou para o usuario root" > falso_alert.log 
hiago@hiago-To-be-filled-by-O-E-M:~/dia01_soc$ echo "Sucesso: Login efetuado pelo usuario hiago" >> falso_alert.log 

hiago@hiago-To-be-filled-by-O-E-M:~/dia01_soc$ cat falso_alert.log 
Erro: Tentativa de login falhou para o usuario root
Sucesso: Login efetuado pelo usuario hiago

hiago@hiago-To-be-filled-by-O-E-M:~/dia01_soc$ grep "Erro" falso_alert.log 
Erro: Tentativa de login falhou para o usuario root
2. Controle de Acesso e Permissões (Access Control & Permissions Hardening)
Bash
hiago@hiago-To-be-filled-by-O-E-M:~/dia01_soc$ ls -l falso_alert.log
-rw-rw-r-- 1 hiago hiago 95 Jun 10 14:47 falso_alert.log

hiago@hiago-To-be-filled-by-O-E-M:~/dia01_soc$ chmod 600 falso_alert.log 
hiago@hiago-To-be-filled-by-O-E-M:~/dia01_soc$ ls -l falso_alert.log
-rw------- 1 hiago hiago 95 Jun 10 14:47 falso_alert.log

hiago@hiago-To-be-filled-by-O-E-M:~/dia01_soc$ chmod 644 falso_alert.log
hiago@hiago-To-be-filled-by-O-E-M:~/dia01_soc$ ls -l falso_alert.log
-rw-r--r-- 1 hiago hiago 95 Jun 10 14:47 falso_alert.log
3. Redes e Monitoramento do Sistema (Networking & System Monitoring)
Bash
hiago@hiago-To-be-filled-by-O-E-M:~/dia01_soc$ ip a
2: enp3s0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc fq_codel state UP group default qlen 1000
    inet 192.168.1.18/24 brd 192.168.1.255 scope global dynamic noprefixroute enp3s0

hiago@hiago-To-be-filled-by-O-E-M:~$ ping -c 3 tryhackme.com
PING tryhackme.com (2600:3c03::f03c:95ff:feed:4d4f) 56 data bytes
64 bytes from 2600:3c03::f03c:95ff:feed:4d4f: icmp_seq=1 ttl=54 time=132 ms
64 bytes from 2600:3c03::f03c:95ff:feed:4d4f: icmp_seq=2 ttl=54 time=132 ms
64 bytes from 2600:3c03::f03c:95ff:feed:4d4f: icmp_seq=3 ttl=54 time=132 ms

--- tryhackme.com ping statistics ---
3 packets transmitted, 3 received, 0% packet loss, time 2001ms

hiago@hiago-To-be-filled-by-O-E-M:~$ ps aux | grep bash
hiago       9165  0.0  0.0  20448  6096 pts/0    Ss   14:10   0:00 /usr/bin/bash

hiago@hiago-To-be-filled-by-O-E-M:~$ systemctl status NetworkManager 
● NetworkManager.service - Network Manager
     Loaded: loaded (/usr/lib/systemd/system/NetworkManager.service; enabled; preset: enabled)
     Active: active (running) since Wed 2026-06-10 13:42:29 -03; 1h 59min ago
"""

with open("README.md", "w", encoding="utf-8") as f:
f.write(readme_content)

print("File generated successfully.")

Seu arquivo Markdown (MD) está pronto para o seu GitHub!
[file-tag: code-generated-file-0-1781117549351599120]

Ficou animal, Hiago! Eu estruturei o documento exatamente como os profissionais da área fazem: uma introdução limpa, o resumo técnico do que você aprendeu e os comandos dominados separados em **Português** e **Inglês** (ter o portfólio bilíngue chama muita atenção dos recrutadores de segurança), seguido pelos blocos de código com os logs reais dos testes que você realizou no seu terminal hoje.

Você pode baixar esse arquivo `README.md` gerado e subir direto no seu repositório de estudos do GitHub. 

Abaixo, deixo o código em texto para você visualizar como ficou a estrutura:

```markdown
# 🛡️ SOC Analyst Learning Journey - Month 1 (Week 1)

Repositório dedicado ao registro prático da minha jornada de estudos focada em **Segurança Defensiva (Blue Team)** e **Administração de Sistemas Linux**.

---

## 🇧🇷 Resumo do Dia (Português)

### 📝 O que eu aprendi hoje:
1. **Conceito de Linux:** Compreendi por que o Linux é a espinha dorsal do SOC (Blue Team), rodando em mais de 90% dos servidores mundiais e ferramentas de monitoramento como o Splunk.
2. **Navegação e Manipulação de Arquivos:** Dominei os comandos básicos para me mover pelo sistema através do terminal, criar diretórios organizados e gerar arquivos de logs vazios para simulações.
3. **Análise e Filtragem de Conteúdo:** Aprendi a ler arquivos diretamente pelo terminal e, o mais importante para o SOC, a utilizar filtros de strings para caçar anomalias ou alertas específicos em arquivos de texto massivos.
4. **Gerenciamento de Permissões (Matemática do Chmod):** Entendi como funciona o controle de acesso no Linux baseado na tríade *Dono (User)*, *Grupo (Group)* e *Outros (Others)*, utilizando a soma de bits: `4 (Read)`, `2 (Write)`, e `1 (Execute)`. Pratiquei a mitigação de riscos alterando arquivos vulneráveis (`777`) para permissões seguras (`600` e `644`).
5. **Infraestrutura de Rede, Processos e Serviços:** Aprendi a identificar o endereço IP da minha máquina, testar a conectividade básica com hosts externos através do protocolo ICMP, listar processos ativos para caçar possíveis malwares em execução e monitorar o status de serviços essenciais do sistema em segundo plano.

### 💻 Comandos Dominados:
* `pwd` - Imprime o diretório de trabalho atual.
* `mkdir` - Cria uma nova pasta/diretório.
* `cd` - Muda de diretório (navegação).
* `touch` - Cria um arquivo vazio.
* `ls -la` - Lista todos os arquivos (incluindo ocultos) em formato detalhado.
* `cat` - Exibe todo o conteúdo de um arquivo na tela.
* `grep` - Filtra e busca por termos específicos dentro de arquivos (utilizando flags como `-i` para ignorar maiúsculas/minúsculas e `-v` para inverter a busca).
* `chmod` - Altera as permissões de acesso de arquivos e pastas.
* `chown` - Altera o proprietário (dono) e o grupo de um arquivo.
* `ip a` - Exibe as interfaces de rede e os endereços IP.
* `ping` - Testa a conectividade com um host na rede enviando pacotes ICMP (flag `-c` limita a contagem).
* `ps aux` - Lista todos os processos em execução no sistema.
* `systemctl status` - Exibe o estado atual de um serviço do sistema (se está ativo ou parado).

---

## 🇺🇸 Daily Summary (English)

### 📝 What I Learned Today:
1. **Linux Core Concepts:** Understood why Linux is the backbone of SOC (Blue Team) operations, powering over 90% of worldwide servers and critical monitoring tools like Splunk.
2. **Navigation & File Manipulation:** Mastered basic terminal commands to navigate the file system, build structured directories, and generate empty log files for incident simulations.
3. **Content Analysis & Filtering:** Learned how to read file contents directly from the terminal and, crucially for a SOC Analyst, how to isolate strings to hunt down anomalies or specific alerts in massive text logs.
4. **Permissions Management (Chmod Math):** Learned Linux access control mechanisms based on the *User*, *Group*, and *Others* triad, utilizing bitmask math: `4 (Read)`, `2 (Write)`, and `1 (Execute)`. Practiced risk mitigation by hardening vulnerable files (`777`) into secure states (`600` and `644`).
5. **Networking, Processes & Services Infrastructure:** Learned how to discover my local IP address, verify network connectivity with remote hosts using ICMP packets, list running processes to hunt malicious payloads, and inspect the state of background system daemons.

### 💻 Mastered Commands:
* `pwd` - Print working directory.
* `mkdir` - Make directory.
* `cd` - Change directory.
* `touch` - Create an empty file.
* `ls -la` - List directory contents with detailed view and hidden files.
* `cat` - Concatenate and display file content.
* `grep` - Search and filter specific patterns inside files (using flags like `-i` to ignore case and `-v` to invert match).
* `chmod` - Change file modes or access permissions.
* `chown` - Change file owner and group.
* `ip a` - Display network interfaces and IP addresses.
* `ping` - Send ICMP ECHO_REQUEST to network hosts (using `-c` to limit packet count).
* `ps aux` - Report a snapshot of current running processes.
* `systemctl status` - Inspect the state of a system service (active/running or stopped).

---

## 🪵 Terminal Logs / Evidências Práticas

### 1. Navegação, Criação e Filtros (File Management & Filtering)
```bash
hiago@hiago-To-be-filled-by-O-E-M:~$ pwd
/home/hiago

hiago@hiago-To-be-filled-by-O-E-M:~$ mkdir dia01_soc
hiago@hiago-To-be-filled-by-O-E-M:~$ cd dia01_soc

hiago@hiago-To-be-filled-by-O-E-M:~/dia01_soc$ touch falso_alert.log 
hiago@hiago-To-be-filled-by-O-E-M:~/dia01_soc$ ls -la
total 8
drwxrwxr-x  2 hiago hiago 4096 Jun 10 14:38 .
drwxr-x--- 29 hiago hiago 4096 Jun 10 14:37 ..
-rw-rw-r--  1 hiago hiago    0 Jun 10 14:38 falso_alert.log

hiago@hiago-To-be-filled-by-O-E-M:~/dia01_soc$ echo "Erro: Tentativa de login falhou para o usuario root" > falso_alert.log 
hiago@hiago-To-be-filled-by-O-E-M:~/dia01_soc$ echo "Sucesso: Login efetuado pelo usuario hiago" >> falso_alert.log 

hiago@hiago-To-be-filled-by-O-E-M:~/dia01_soc$ cat falso_alert.log 
Erro: Tentativa de login falhou para o usuario root
Sucesso: Login efetuado pelo usuario hiago

hiago@hiago-To-be-filled-by-O-E-M:~/dia01_soc$ grep "Erro" falso_alert.log 
Erro: Tentativa de login falhou para o usuario root
2. Controle de Acesso e Permissões (Access Control & Permissions Hardening)
Bash
hiago@hiago-To-be-filled-by-O-E-M:~/dia01_soc$ ls -l falso_alert.log
-rw-rw-r-- 1 hiago hiago 95 Jun 10 14:47 falso_alert.log

hiago@hiago-To-be-filled-by-O-E-M:~/dia01_soc$ chmod 600 falso_alert.log 
hiago@hiago-To-be-filled-by-O-E-M:~/dia01_soc$ ls -l falso_alert.log
-rw------- 1 hiago hiago 95 Jun 10 14:47 falso_alert.log

hiago@hiago-To-be-filled-by-O-E-M:~/dia01_soc$ chmod 644 falso_alert.log
hiago@hiago-To-be-filled-by-O-E-M:~/dia01_soc$ ls -l falso_alert.log
-rw-r--r-- 1 hiago hiago 95 Jun 10 14:47 falso_alert.log
3. Redes e Monitoramento do Sistema (Networking & System Monitoring)
Bash
hiago@hiago-To-be-filled-by-O-E-M:~/dia01_soc$ ip a
2: enp3s0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc fq_codel state UP group default qlen 1000
    inet 192.168.1.18/24 brd 192.168.1.255 scope global dynamic noprefixroute enp3s0

hiago@hiago-To-be-filled-by-O-E-M:~$ ping -c 3 tryhackme.com
PING tryhackme.com (2600:3c03::f03c:95ff:feed:4d4f) 56 data bytes
64 bytes from 2600:3c03::f03c:95ff:feed:4d4f: icmp_seq=1 ttl=54 time=132 ms
64 bytes from 2600:3c03::f03c:95ff:feed:4d4f: icmp_seq=2 ttl=54 time=132 ms
64 bytes from 2600:3c03::f03c:95ff:feed:4d4f: icmp_seq=3 ttl=54 time=132 ms

--- tryhackme.com ping statistics ---
3 packets transmitted, 3 received, 0% packet loss, time 2001ms

hiago@hiago-To-be-filled-by-O-E-M:~$ ps aux | grep bash
hiago       9165  0.0  0.0  20448  6096 pts/0    Ss   14:10   0:00 /usr/bin/bash

hiago@hiago-To-be-filled-by-O-E-M:~$ systemctl status NetworkManager 
● NetworkManager.service - Network Manager
     Loaded: loaded (/usr/lib/systemd/system/NetworkManager.service; enabled; preset: enabled)
     Active: active (running) since Wed 2026-06-10 13:42:29 -03; 1h 59min ago
