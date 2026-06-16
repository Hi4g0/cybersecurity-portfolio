Aqui está o seu arquivo README.md definitivo, unificado e bilíngue (Português e Inglês). Ele junta absolutamente tudo o que você aprendeu e praticou hoje, dia 16 de junho de 2026: a investigação e filtragem de Força Bruta, a criação de alertas customizados no terminal e a implementação completa do Fail2Ban (IPS).
Markdown

# 🛡️ Jornada SOC Analyst - Diário de Laboratório Prático / SOC Analyst Journey - Practical Lab Diary

Este repositório documenta a consolidação prática dos meus estudos em Operações de Segurança (SOC), Engenharia de Logs e Resposta a Incidentes. Os registros abaixo refletem testes reais conduzidos em ambiente controlado (Kali Linux vs. Ubuntu Server).

---

## 🇧🇷 [PT-BR] Monitoramento Avançado e Detecção de Ameaças (16/06/2026)

### 1. Detecção de Ataques de Força Bruta (Brute Force)
Compreendi o comportamento e a assinatura digital que ataques automatizados deixam nos logs do sistema. Esse tipo de ameaça é caracterizado por uma alta frequência de erros de autenticação disparados contra serviços como SSH ou sudo, vindos de uma mesma origem em um curto espaço de tempo.

### 2. Geração Controlada de Evidências & Análise de Logs
Para testar a eficiência dos nossos filtros de SOC em um ambiente de laboratório limpo, limpei o cache de credenciais do sistema e forcei falhas de autenticação propositais.

**Comando para forçar o log de erro (limpando cache do sudo):**
```bash
sudo -k && sudo ls

Após errar a senha intencionalmente, inspecionei as últimas 15 linhas de log bruto do sistema para validar a telemetria gerada:
Bash

sudo journalctl -n 15

Output Real do Terminal:
Plaintext

Jun 16 15:42:02 kali unix_chkpwd[21098]: password check failed for user (hiago)
Jun 16 15:42:02 kali sudo[21088]: pam_unix(sudo:auth): authentication failure; logname=hiago uid=1000 euid=0 tty=/dev/pts/0 ruser=hiago rhost=  user=hiago
Jun 16 15:42:09 kali sudo[21088]:     hiago : 3 incorrect password attempts ; TTY=pts/0 ; PWD=/home/hiago ; USER=root ; COMMAND=/usr/bin/ls

3. Criação de Alertas Customizados via Pipeline (grep + awk)

Utilizei a lógica de encadeamento de comandos para criar um mini-gerador de alertas dentro do terminal. O objetivo foi limpar os metadados redundantes e injetar strings de texto personalizadas para facilitar o trabalho do analista de SOC.

Comando de extração e formatação:
Bash

sudo journalctl -n 30 | grep "incorrect password" | awk '{print $1, $2, $3, "Usuário:", $6, "Alerta: Força Bruta"}'

Output do Alerta Formatado:
Plaintext

Jun 16 15:42:09 Usuário: hiago Alerta: Força Bruta

4. Implementação de Defesa Automatizada (Fail2Ban - IPS)

Subi o nível da defesa saindo da detecção manual para a mitigação automática usando um IPS (Intrusion Prevention System). Instalei e configurei o Fail2Ban para monitorar os logs em tempo real e banir IPs maliciosos diretamente no Firewall.

Apliquei as boas práticas de hardening criando um arquivo de configuração isolado (jail.local):
Bash

sudo nano /etc/fail2ban/jail.local

Configuração aplicada (3 erros de senha = 10 minutos de banimento):
Ini, TOML

[DEFAULT]
bantime = 600
findtime = 600
maxretry = 3

[sshd]
enabled = true
port = ssh
filter = sshd
logpath = %(sshd_log)s

Comando para ativar o serviço e checar o status da "Prisão" (Jail) do SSH:
Bash

sudo systemctl start fail2ban && sudo systemctl enable fail2ban
sudo fail2ban-client status sshd

Output do painel de monitoramento do Fail2Ban:
Plaintext

Status for the jail: sshd
|- Filter
|  |- Currently failed: 0
|  |- Total failed:     0
|  `- Journal matches:  _SYSTEMD_UNIT=ssh.service + _COMM=sshd
`- Actions
   |- Currently banned: 0
   |- Total banned:     0
   `- Banned IP list:

🇺🇸 [EN] Advanced Monitoring & Threat Detection (2026-06-16)
1. Brute Force Attack Detection

Understood the behavior and digital signature that automated attacks leave in system logs. This type of threat is characterized by a high frequency of authentication errors triggered against services like SSH or sudo, coming from the same source IP within a short timeframe.
2. Controlled Evidence Generation & Log Analysis

To test our SOC filters within a clean lab environment, I cleared the cached credentials and forced intentional authentication failures.

Command to force error logs (clearing sudo cache):
Bash

sudo -k && sudo ls

After intentionally typing the wrong password, I inspected the final 15 lines of raw system logs to validate the telemetry generated:
Bash

sudo journalctl -n 15

Real Terminal Output:
Plaintext

Jun 16 15:42:02 kali unix_chkpwd[21098]: password check failed for user (hiago)
Jun 16 15:42:02 kali sudo[21088]: pam_unix(sudo:auth): authentication failure; logname=hiago uid=1000 euid=0 tty=/dev/pts/0 ruser=hiago rhost=  user=hiago
Jun 16 15:42:09 kali sudo[21088]:     hiago : 3 incorrect password attempts ; TTY=pts/0 ; PWD=/home/hiago ; USER=root ; COMMAND=/usr/bin/ls

3. Custom Alert Creation via Pipeline (grep + awk)

Leveraged command chaining logic to craft a mini-alert generator directly inside the terminal. The objective was to strip away redundant metadata and inject custom text strings to streamline the SOC analyst's workflow.

Extraction and formatting command:
Bash

sudo journalctl -n 30 | grep "incorrect password" | awk '{print $1, $2, $3, "User:", $6, "Alert: Brute Force"}'

Formatted Alert Output:
Plaintext

Jun 16 15:42:09 User: hiago Alert: Brute Force

4. Automated Defense Implementation (Fail2Ban - IPS)

Scaled up defensive operations by transitioning from manual detection to automated mitigation using an IPS (Intrusion Prevention System). I installed and configured Fail2Ban to monitor logs in real-time and ban malicious IPs directly via the Firewall.

Applied security hardening best practices by setting up an isolated configuration file (jail.local):
Bash

sudo nano /etc/fail2ban/jail.local

Applied Policy (3 password failures = 10-minute ban):
Ini, TOML

[DEFAULT]
bantime = 600
findtime = 600
maxretry = 3

[sshd]
enabled = true
port = ssh
filter = sshd
logpath = %(sshd_log)s

Command to initialize the service and audit the SSH Jail status:
Bash

sudo systemctl start fail2ban && sudo systemctl enable fail2ban
sudo fail2ban-client status sshd

Fail2Ban Dashboard Terminal Output:
Plaintext

Status for the jail: sshd
|- Filter
|  |- Currently failed: 0
|  |- Total failed:     0
|  `- Journal matches:  _SYSTEMD_UNIT=ssh.service + _COMM=sshd
`- Actions
   |- Currently banned: 0
   |- Total banned:     0
   `- Banned IP list:

🛠️ Comandos Dominados / Mastered Commands

    sudo -k - Limpa o cache de credenciais do sudo / Clears cached sudo credentials.

    comando | grep "string" | awk '{print ...}' - Criação de pipelines para parsing e alertas customizados / Pipeline creation for text parsing and custom alerts.

    sudo systemctl start/enable fail2ban - Gerenciamento do ciclo de vida do IPS / IPS service lifecycle management.

    sudo fail2ban-client status [jail] - Interroga o status de bloqueio do robô defensivo / Queries the defensive engine's active ban statistics.
