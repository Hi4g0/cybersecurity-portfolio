# 🛡️ SOC Analyst Learning Journey - Month 1 (Week 1)

Repositório dedicado ao registro prático da minha jornada de estudos focada em **Segurança Defensiva (Blue Team)**, **Análise de Logs** e **Simulação de Redes**.

---

## 🇧🇷 Resumos dos Dias (Português)

### 📝 O que eu aprendi em 11/06:
1. **Investigação de Logs Reais (`/var/log`):** Aprendi a navegar e analisar a "caixa-preta" do Linux. Inspecionei o arquivo `syslog` e o `auth.log` para rastrear eventos do sistema.
2. **Leitura Direcionada com `tail` e `head`:** Dominei o uso do `head` para inspecionar o início de logs e do `tail` para capturar os eventos mais recentes. Compreendi a importância da flag `tail -f` para monitorar ataques e autenticações em tempo real.
3. **Análise Crítica de SOC (Telemetria):** Identifiquei através dos meus próprios logs ações reais do Firewall nativo (`[UFW BLOCK]`) bloqueando conexões externas e o registro exato de falhas de autenticação de senhas (`authentication failure`).
4. **Empacotamento e Preservação de Evidências (`tar`):** Aprendi a agrupar e compactar arquivos de log usando `tar -czvf`, simulando a coleta segura de evidências digitais para posterior envio à análise forense.
5. **Infraestrutura de Simulação com GNS3:** Realizei a instalação do zero do ecossistema GNS3 e Wireshark no Ubuntu. Enfrentei e solucionei problemas complexos de permissões de segurança de rede do Linux envolvendo o `uBridge` e o `dumpcap`, aplicando conceitos avançados de grupos de usuários (`usermod`, `groupadd`) e privilégios de execução (`chmod 4755`).

### 📝 O que eu aprendi em 12/06:
1. **Análise de Tráfego em Tempo Real (Wireshark):** Aprendi a acoplar o Wireshark em interfaces de rede virtuais dentro do GNS3 para inspecionar pacotes no exato momento em que eles transitam pelo cabo de rede.
2. **Estrutura de Pacotes (Modelo OSI na Prática):** Desmontei um pacote ICMP e analisei suas camadas de cabeçalho: Frame (Física), Ethernet II (Enlace/Endereço MAC de origem e destino), IPv4 (Rede/Endereços IP) e ICMP (Aplicação e Controle).
3. **Mecanismo do Protocolo ARP (Address Resolution Protocol):** Compreendi como as máquinas usam pacotes de *Broadcast* para mapear IPs lógicos em endereços MAC físicos. Identifiquei o comportamento de requisição (`Who has IP? Tell IP`) quando um host tenta se comunicar com um destino desconhecido.
4. **Visão de SOC (Detecção de Varreduras):** Conectei o comportamento do protocolo ARP com técnicas reais de atacantes (*Network Scanning* / *Host Discovery*), aprendendo a identificar anomalias visuais através do excesso de requisições de Broadcast sem resposta na rede.

### 💻 Comandos Dominados (Geral):
* `head /var/log/syslog` - Exibe as primeiras linhas do log principal do sistema.
* `tail -n 15 /var/log/syslog` - Exibe as últimas 15 linhas do log de eventos.
* `sudo tail -20 /var/log/auth.log` - Inspeciona os últimos 20 registros de tentativas de login e elevação de privilégio.
* `tar -czvf nome.tar.gz arquivo` - Cria um pacote compactado (Gzip) preservando os metadados do arquivo.
* `sudo add-apt-repository ppa:gns3/ppa` - Adiciona repositórios externos seguros de ferramentas de simulação.
* `sudo chmod 4755 /usr/bin/ubridge` - Define permissões SUID especiais para o uBridge rodar com privilégios de rede no Linux.
* `ip 192.168.10.5 255.255.255.0` (no terminal VPCS) - Configura estaticamente o endereço IP e a máscara de sub-rede do host virtual.
* `show ip` - Exibe as configurações atuais de rede do host VPCS.

---

## 🇺🇸 Daily Summaries (English)

### 📝 What I Learned on 11/06:
1. **Real-World Log Investigation (`/var/log`):** Learned how to navigate and analyze Linux logs. Inspected `syslog` and `auth.log` files to track system and security-related events.
2. **Targeted Reading with `tail` & `head`:** Mastered using `head` to check the beginning of logs and `tail` to catch the latest events. Understood the critical role of `tail -f` in monitoring live attacks and authentication attempts.
3. **SOC Telemetry Analysis:** Identified real activities from the native firewall (`[UFW BLOCK]`) dropping external packets and pinpointed exact timestamps of failed password attempts (`authentication failure`) within my own system logs.
4. **Evidence Preservation & Archiving (`tar`):** Learned how to bundle and compress log files using `tar -czvf`, simulating a secure digital forensics evidence collection pipeline.
5. **Network Simulation Infrastructure (GNS3):** Installed the GNS3 and Wireshark ecosystem from scratch on Ubuntu. Faced and successfully troubleshooted Linux network security permission roadblocks regarding `uBridge` and `dumpcap` by applying user group management (`usermod`, `groupadd`) and special execution bit tweaks (`chmod 4755`).

### 📝 What I Learned on 12/06:
1. **Live Traffic Analysis (Wireshark):** Learned how to attach Wireshark to virtual network interfaces inside GNS3 to intercept and inspect packets on the fly.
2. **Packet Structure (OSI Model in Practice):** Dissected an ICMP packet and analyzed its header layers: Frame (Physical), Ethernet II (Data Link/Source and Destination MAC Addresses), IPv4 (Network/IP Addresses), and ICMP (Application/Control).
3. **ARP Protocol Mechanism (Address Resolution Protocol):** Understood how machines leverage *Broadcast* packets to map logical IPs to physical MAC addresses. Identified request behaviors (`Who has IP? Tell IP`) when a host attempts to reach an unknown or non-existent destination.
4. **SOC Perspective (Scan Detection):** Tied ARP behavior to real-world attacker techniques (*Network Scanning* / *Host Discovery*), learning how to spot network anomalies via excessive unanswered broadcast requests.

### 💻 Mastered Commands (General):
* `head /var/log/syslog` - Outputs the first few lines of the main system log.
* `tail -n 15 /var/log/syslog` - Outputs the last 15 lines of the system log.
* `sudo tail -20 /var/log/auth.log` - Inspects the final 20 lines of authentication and privilege elevation attempts.
* `tar -czvf name.tar.gz file` - Creates a compressed archive (Gzip) while preserving file metadata.
* `sudo add-apt-repository ppa:gns3/ppa` - Adds secure third-party repositories for simulation software.
* `sudo chmod 4755 /usr/bin/ubridge` - Configures special SUID permissions for network bridging binaries.
* `ip 192.168.10.5 255.255.255.0` (inside VPCS) - Statically configures IP address and subnet mask on the virtual host.
* `show ip` - Displays current network settings of the VPCS host.

---

## 🪵 Terminal Logs & Pratic Evidence (All Days Combined)

### 1. Investigação Forense de Autenticação e Bloqueios do Firewall (Linux)
```bash
hiago@hiago-To-be-filled-by-O-E-M:~$ head /var/log/syslog
2026-06-07T21:49:49.096121-03:00 kernel: [UFW BLOCK] IN=enp3s0 OUT= MAC=01:00:5e:00:00:01 SRC=192.168.1.1 DST=224.0.0.1 PROTO=2 

hiago@hiago-To-be-filled-by-O-E-M:~$ sudo tail -20 /var/log/auth.log
2026-06-11T14:13:55.993298-03:00 hiago-To-be-filled-by-O-E-M sudo: pam_unix(sudo:auth): authentication failure; logname=hiago uid=1000 euid=0 user=hiago
2026-06-11T14:14:03.508729-03:00 hiago-To-be-filled-by-O-E-M sudo: pam_unix(sudo:session): session opened for user root(uid=0) by hiago(uid=1000)
2. Coleta, Empacotamento e Verificação de Evidência Digital
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
3. Ajuste de Permissões Críticas do Motor de Redes (uBridge) & Solução de Erros
Bash
hiago@hiago-To-be-filled-by-O-E-M:~$ sudo apt install gns3-gui gns3-server wireshark
hiago@hiago-To-be-filled-by-O-E-M:~$ sudo groupadd wireshark
hiago@hiago-To-be-filled-by-O-E-M:~$ sudo usermod -aG wireshark $USER
hiago@hiago-To-be-filled-by-O-E-M:~$ sudo chmod 4755 /usr/bin/ubridge

# [Mapeamento do Erro de Permissão do uBridge antes do reboot]:
# ERROR http_client:755 uBridge is not available, path doesn't exist, or you just installed GNS3 and need to restart your user session to refresh user permissions.

# [Mapeamento do Erro de Dependência do Console corrigido com a instalação do pacote ausente]:
# => Could not start Telnet console with command 'gnome-terminal --tab -t "PC1" -- telnet localhost 5000': [Errno 2] Arquivo ou diretório inexistente: 'gnome-terminal'
hiago@hiago-To-be-filled-by-O-E-M:~$ sudo apt install gnome-terminal telnet
4. GNS3 - Comunicação de Rede Ativa via ICMP (Ping com Sucesso)
Bash
PC1> ping 192.168.10.6 

84 bytes from 192.168.10.6 icmp_seq=1 ttl=64 time=0.546 ms
84 bytes from 192.168.10.6 icmp_seq=2 ttl=64 time=0.483 ms
84 bytes from 192.168.10.6 icmp_seq=3 ttl=64 time=0.222 ms
84 bytes from 192.168.10.6 icmp_seq=4 ttl=64 time=0.462 ms
84 bytes from 192.168.10.6 icmp_seq=5 ttl=64 time=0.511 ms
5. GNS3 - Resposta de Host Inalcançável (IP Fantasma)
Bash
PC2> ping 192.168.10.50 

host (192.168.10.50) not reachable
6. Wireshark - Telemetria Capturada (Mapeamento de Requisições ARP via Broadcast)
Plaintext
No.   Time        Source             Destination        Protocol   Length   Info
1     0.000000    00:50:79:66:68:01  Broadcast          ARP        64       Who has 192.168.10.50? Tell 192.168.10.6
2     0.998122    00:50:79:66:68:01  Broadcast          ARP        64       Who has 192.168.10.50? Tell 192.168.10.6
3     1.999431    00:50:79:66:68:01  Broadcast          ARP        64       Who has 192.168.10.50? Tell 192.168.10.6

---

Prontinho! Agora sim está completo, no modelo definitivo que você precisava, com todas as explicações bilíngues no topo e todos os logs organizados na parte técnica final.

Seu GitHub vai ficar extremamente profissional com esse nível de detalhamento. Copie esse bloco inteiro e mande bala! Pronto para continuar o laboratório?
