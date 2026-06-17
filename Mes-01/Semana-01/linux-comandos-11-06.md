# 🛡️ SOC Analyst Learning Journey - Month 1 (Week 1)

Repositório dedicado ao registro prático da minha jornada de estudos focada em **Segurança Defensiva (Blue Team)**, **Análise de Logs** e **Simulação de Redes**.

---

## 🇧🇷 Resumo do Dia: 11/06 (Português)

### 📝 O que eu aprendi ontem:
1. **Investigação de Logs Reais (`/var/log`):** Aprendi a navegar e analisar a "caixa-preta" do Linux. Inspecionei o arquivo `syslog` e o `auth.log` para rastrear eventos do sistema.
2. **Leitura Direcionada com `tail` e `head`:** Dominei o uso do `head` para inspecionar o início de logs e do `tail` para capturar os eventos mais recentes. Compreendi a importância da flag `tail -f` para monitorar ataques e autenticações em tempo real.
3. **Análise Crítica de SOC (Telemetria):** Identifiquei através dos meus próprios logs ações reais do Firewall nativo (`[UFW BLOCK]`) bloqueando conexões externas e o registro exato de falhas de autenticação de senhas (`authentication failure`).
4. **Empacotamento e Preservação de Evidências (`tar`):** Aprendi a agrupar e compactar arquivos de log usando `tar -czvf`, simulando a coleta segura de evidências digitais para posterior envio à análise forense.
5. **Infraestrutura de Simulação com GNS3:** Realizei a instalação do zero do ecossistema GNS3 e Wireshark no Ubuntu. Enfrentei e solucionei problemas complexos de permissões de segurança de rede do Linux envolvendo o `uBridge` e o `dumpcap`, aplicando conceitos avançados de grupos de usuários (`usermod`, `groupadd`) e privilégios de execução (`chmod 4755`).

### 💻 Comandos Dominados:
* `head /var/log/syslog` - Exibe as primeiras linhas do log principal do sistema.
* `tail -n 15 /var/log/syslog` - Exibe as últimas 15 linhas do log de eventos.
* `sudo tail -20 /var/log/auth.log` - Inspeciona os últimos 20 registros de tentativas de login e elevação de privilégio.
* `tar -czvf nome.tar.gz arquivo` - Cria um pacote compactado (Gzip) preservando os metadados do arquivo.
* `sudo add-apt-repository ppa:gns3/ppa` - Adiciona repositórios externos seguros de ferramentas de simulação.
* `sudo chmod 4755 /usr/bin/ubridge` - Define permissões SUID especiais para que o binário execute com os privilégios necessários para criar conexões de rede virtuais.

---

## 🇺🇸 Daily Summary: 11/06 (English)

### 📝 What I Learned Yesterday:
1. **Real-World Log Investigation (`/var/log`):** Learned how to navigate and analyze Linux logs. Inspected `syslog` and `auth.log` files to track system and security-related events.
2. **Targeted Reading with `tail` & `head`:** Mastered using `head` to check the beginning of logs and `tail` to catch the latest events. Understood the critical role of `tail -f` in monitoring live attacks and authentication attempts.
3. **SOC Telemetry Analysis:** Identified real activities from the native firewall (`[UFW BLOCK]`) dropping external packets and pinpointed exact timestamps of failed password attempts (`authentication failure`) within my own system logs.
4. **Evidence Preservation & Archiving (`tar`):** Learned how to bundle and compress log files using `tar -czvf`, simulating a secure digital forensics evidence collection pipeline.
5. **Network Simulation Infrastructure (GNS3):** Installed the GNS3 and Wireshark ecosystem from scratch on Ubuntu. Faced and successfully troubleshooted Linux network security permission roadblocks regarding `uBridge` and `dumpcap` by applying user group management (`usermod`, `groupadd`) and special execution bit tweaks (`chmod 4755`).

### 💻 Mastered Commands:
* `head /var/log/syslog` - Outputs the first few lines of the main system log.
* `tail -n 15 /var/log/syslog` - Outputs the last 15 lines of the system log.
* `sudo tail -20 /var/log/auth.log` - Inspects the final 20 lines of authentication and privilege elevation attempts.
* `tar -czvf name.tar.gz file` - Creates a compressed archive (Gzip) while preserving file metadata.
* `sudo add-apt-repository ppa:gns3/ppa` - Adds secure third-party repositories for simulation software.
* `sudo chmod 4755 /usr/bin/ubridge` - Configures special SUID permissions for network bridging binaries.

---

## 🪵 Terminal Logs / Evidências Práticas

### 1. Investigação Forense de Autenticação e Bloqueios do Firewall
```bash
hiago@hiago-To-be-filled-by-O-E-M:~$ head /var/log/syslog
2026-06-07T21:49:49.096121-03:00 kernel: [UFW BLOCK] IN=enp3s0 OUT= MAC=01:00:5e:00:00:01 SRC=192.168.1.1 DST=224.0.0.1 PROTO=2 

hiago@hiago-To-be-filled-by-O-E-M:~$ sudo tail -20 /var/log/auth.log
2026-06-11T14:13:55.993298-03:00 hiago-To-be-filled-by-O-E-M sudo: pam_unix(sudo:auth): authentication failure; logname=hiago uid=1000 euid=0 user=hiago
2026-06-11T14:14:03.508729-03:00 hiago-To-be-filled-by-O-E-M sudo: pam_unix(sudo:session): session opened for user root(uid=0) by hiago(uid=1000)
2. Coleta e Compactação de Evidência Digital
Bash
hiago@hiago-To-be-filled-by-O-E-M:~/dia01_soc$ tar -cvzf evidencia.tar.gz falso_alert.log 
falso_alert.log

hiago@hiago-To-be-filled-by-O-E-M:~/dia01_soc$ ls -la
total 16
drwxrwxr-x  2 hiago hiago 4096 Jun 11 14:26 .
drwxr-x--- 29 hiago hiago 4096 Jun 10 17:29 ..
-rw-rw-r--  1 hiago hiago  200 Jun 11 14:26 evidencia.tar.gz
-rw-r--r--  1 hiago hiago   95 Jun 10 14:47 falso_alert.log
-rw-rw-r--  1 hiago hiago    0 Jun 10 14:47 falso_alert.log~
3. Ajuste de Permissões Críticas do Motor de Redes (uBridge Troubleshooting)
Bash
hiago@hiago-To-be-filled-by-O-E-M:~$ sudo apt install gns3-gui gns3-server wireshark
hiago@hiago-To-be-filled-by-O-E-M:~$ sudo groupadd wireshark
hiago@hiago-To-be-filled-by-O-E-M:~$ sudo usermod -aG wireshark $USER
hiago@hiago-To-be-filled-by-O-E-M:~$ sudo chmod 4755 /usr/bin/ubridge

# Erro mapeado antes do reboot:
# ERROR http_client:755 uBridge is not available, path doesn't exist, or you just installed GNS3 and need to restart your user session to refresh user permissions.

---

Documentação atualizada! Agora que o GitHub está pronto para receber as informações de ontem, abra o GNS3 na sua máquina para iniciarmos a primeira atividade prática de redes do dia. O `PC1` já está ligando com a bolinha verde?
