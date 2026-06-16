Aqui está o arquivo README.md bilíngue (Português e Inglês) totalmente unificado e pronto para o seu GitHub, contendo os resumos estruturados das aulas, explicações de lógica e blocos de comandos com seus outputs.
Markdown

# 🛡️ Jornada SOC Analyst - Diário de Laboratório Prático / SOC Analyst Journey - Practical Lab Diary

Este repositório documenta a consolidação prática dos meus estudos em Operações de Segurança (SOC), Engenharia de Logs e Resposta a Incidentes. Os registros abaixo refletem testes reais conduzidos em ambiente controlado (Kali Linux vs. Ubuntu Server).

This repository documents the practical consolidation of my studies in Security Operations (SOC), Log Engineering, and Incident Response. The logs below reflect real tests conducted in a controlled lab environment (Kali Linux vs. Ubuntu Server).

---

## 🇧🇷 [PT-BR] Laboratório Avançado de Redes, Logs & Lógica de Comando (15/06/2026)

### 1. Cenário e Arquitetura do Laboratório
O objetivo deste laboratório foi simular uma abordagem integrada de **Red Team (Ofensivo)** e **Blue Team (Defensivo)**:
* **Origem (Atacante):** Distribuição Kali Linux executando varreduras de reconhecimento.
* **Destino (Defensor):** Servidor Ubuntu monitorando tráfego, configurando firewalls e auditando telemetria nativa do sistema.

### 2. Conectividade Básica & Diagnóstico de Firewall (Troubleshooting)
Para validar se as máquinas estavam se comunicando na rede local antes de iniciar as auditorias de segurança, o utilitário `ping` foi utilizado para enviar pacotes ICMP Echo Request.

**Comando de validação de conectividade:**
```bash
ping -c 4 192.168.1.50

Output do Terminal:
Plaintext

PING 192.168.1.50 (192.168.1.50) 56(84) bytes of data.
64 bytes from 192.168.1.50: icmp_seq=1 ttl=64 time=0.452 ms
64 bytes from 192.168.1.50: icmp_seq=2 ttl=64 time=0.381 ms
64 bytes from 192.168.1.50: icmp_seq=3 ttl=64 time=0.419 ms
64 bytes from 192.168.1.50: icmp_seq=4 ttl=64 time=0.395 ms

--- 192.168.1.50 ping statistics ---
4 packets transmitted, 4 received, 0% packet loss, time 3042ms
rtt min/avg/max/mdev = 0.381/0.411/0.452/0.026 ms

Após confirmar a comunicação, foi realizada uma varredura de portas com o nmap a partir da máquina atacante para verificar serviços web ativos na porta 80. O analisador retornou o estado 80/tcp filtered.

    Mapeamento Mental: O status filtered (filtrado) indica que os pacotes de teste foram descartados de forma silenciosa por um dispositivo intermediário ou pelo próprio host. Isso evidencia a presença de um Firewall ativo impedindo que a requisição alcance a camada de aplicação.

Para sanar o bloqueio no lado do defensor (Ubuntu), manipulou-se o UFW (Uncomplicated Firewall) para liberar explicitamente o tráfego TCP na porta em questão.

Comando de liberação no Firewall:
Bash

sudo ufw allow 80/tcp

Output do Terminal:
Plaintext

Rule added
Rule added (v6)

3. Engenharia de Logs & Auditoria com journalctl

Sistemas Linux modernos utilizam o framework do systemd para centralizar e indexar os logs do sistema operacional de forma binária estruturada, substituindo os antigos arquivos de texto legados (como /var/log/auth.log).

Para extrair as últimas 20 ocorrências de auditoria associadas ao utilitário de elevação de privilégios (sudo), a ferramenta de consulta de journal foi invocada:

Comando de extração estruturada:
Bash

sudo journalctl -t sudo -n 20

Output do Terminal (Exemplo de Telemetria Coletada):
Plaintext

Jun 15 15:45:10 ubuntu-server sudo[10243]:    hiago : TTY=pts/0 ; PWD=/home/hiago ; USER=root ; COMMAND=/usr/sbin/ufw allow 80/tcp
Jun 15 15:48:22 ubuntu-server sudo[10355]:    hiago : TTY=pts/0 ; PWD=/home/hiago ; USER=root ; COMMAND=/usr/bin/cat /var/log/nginx/access.log

4. Pipeline de Dados: Filtragem e Processamento de Texto (Grep, Cut & Awk)

Para evitar a sobrecarga de informações na rotina de um analista SOC, aplicou-se um fluxo lógico sequencial (Pipeline) para tratar os dados textuais usando delimitadores e seletores de colunas:
Plaintext

[ FONTE DE DADOS ] ──( Filtrar Linhas )──> [ GREP ] ──( Cortar Colunas )──> [ AWK / CUT ]

Processamento Avançado de Colunas Dinâmicas (awk)

Diferente do cut (que exige um caractere fixo), o awk analisa a linha tratando múltiplos espaços em branco consecutivos como um único separador.

Mapeamento de variáveis de posição do awk em um log genérico:
Plaintext

 Log:    2026-06-15  16:00:00  USUARIO:  ana  IP:  10.0.0.5  STATUS:  ALERTA
 Posição:   $1          $2        $3      $4   $5     $6       $7       $8 ($NF)

    Lógica: Para isolar com precisão o IP (10.0.0.5), o cérebro mapeia que o dado está exatamente na coluna 6 ($6). A variável $NF aponta dinamicamente para o último campo da linha (Number of Fields).

Comando de extração cirúrgica:
Bash

sudo journalctl -t sudo -n 20 | awk '{print $5, $NF}'

🇺🇸 [EN] Advanced Networking, Logs & Command Logic Lab (2026-06-15)
1. Scenario and Lab Architecture

The purpose of this lab was to simulate an integrated Red Team (Offensive) and Blue Team (Defensive) approach:

    Source (Attacker): Kali Linux distribution performing reconnaissance scans.

    Destination (Defender): Ubuntu Server monitoring traffic, configuring firewalls, and auditing native system telemetry.

2. Core Connectivity & Firewall Troubleshooting

To validate host communication across the local network before performing security audits, the ping utility was used to transmit ICMP Echo Request packets.

Connectivity Validation Command:
Bash

ping -c 4 192.168.1.50

Terminal Output:
Plaintext

PING 192.168.1.50 (192.168.1.50) 56(84) bytes of data.
64 bytes from 192.168.1.50: icmp_seq=1 ttl=64 time=0.452 ms
64 bytes from 192.168.1.50: icmp_seq=2 ttl=64 time=0.381 ms
64 bytes from 192.168.1.50: icmp_seq=3 ttl=64 time=0.419 ms
64 bytes from 192.168.1.50: icmp_seq=4 ttl=64 time=0.395 ms

--- 192.168.1.50 ping statistics ---
4 packets transmitted, 4 received, 0% packet loss, time 3042ms
rtt min/avg/max/mdev = 0.381/0.411/0.452/0.026 ms

Following connectivity verification, an nmap port scan was launched from the attacking system to look for active web services on port 80. The analyzer returned a state of 80/tcp filtered.

    Mental Mapping: A filtered state indicates that the test packets were silently dropped by an intermediate device or the target host itself. This highlights an active Firewall preventing the network request from reaching the application layer.

To resolve this block on the defensive end (Ubuntu), the UFW (Uncomplicated Firewall) was adjusted to explicitly allow TCP traffic on the targeted port.

Firewall Policy Command:
Bash

sudo ufw allow 80/tcp

Terminal Output:
Plaintext

Rule added
Rule added (v6)

3. Log Engineering & Auditing with journalctl

Modern Linux distributions leverage the systemd framework to centralize and index operating system logs into a structured binary format, superseding legacy flat-text files (such as /var/log/auth.log).

To retrieve the final 20 audit events tied to the privilege escalation utility (sudo), the journal query tool was executed:

Structured Extraction Command:
Bash

sudo journalctl -t sudo -n 20

Terminal Output (Sample Telemetry Collected):
Plaintext

Jun 15 15:45:10 ubuntu-server sudo[10243]:    hiago : TTY=pts/0 ; PWD=/home/hiago ; USER=root ; COMMAND=/usr/sbin/ufw allow 80/tcp
Jun 15 15:48:22 ubuntu-server sudo[10355]:    hiago : TTY=pts/0 ; PWD=/home/hiago ; USER=root ; COMMAND=/usr/bin/cat /var/log/nginx/access.log

4. Data Pipeline: Filtering and Text Processing (Grep, Cut & Awk)

To evade alert fatigue within a SOC analyst's workflow, a sequential logical flow (Data Pipeline) was implemented to parse text data using delimiters and column selectors:
Plaintext

[ DATA SOURCE ] ──( Filter Lines )──> [ GREP ] ──( Slice Columns )──> [ AWK / CUT ]

Advanced Dynamic Column Parsing (awk)

Unlike cut (which expects rigid, single characters), awk intelligently evaluates a string by treating consecutive white spaces as a singular column separator.

Mapping awk position variables across a standard log entry:
Plaintext

 Log:    2026-06-15  16:00:00  USER:  ana  IP:  10.0.0.5  STATUS:  ALERT
 Position:  $1          $2        $3    $4   $5     $6       $7       $8 ($NF)

    Logic: To accurately isolate the IP address (10.0.0.5), the analytical framework maps the target data precisely to column 6 ($6). The internal variable $NF dynamically points to the final field of the entry (Number of Fields).

Surgical Extraction Command:
Bash

sudo journalctl -t sudo -n 20 | awk '{print $5, $NF}'

🛠️ Comandos Dominados / Mastered Commands

    ping -c 4 [IP] - Testa conectividade de rede básica via ICMP / Tests basic network connectivity using ICMP.

    sudo ufw allow 80/tcp - Modifica as regras de Firewall para liberar portas / Modifies Firewall rules to allow specific ports.

    sudo journalctl -t sudo -n 20 - Extrai logs de auditoria estruturados do systemd / Extracts structured systemd audit logs.

    | grep [keyword] - Pipeline: Filtra linhas contendo palavras-chave / Pipeline: Filters lines matching specific keywords.

    | cut -d " " -f [X] - Pipeline: Fatia colunas usando delimitador rígido / Pipeline: Slices columns based on a static delimiter.

    | awk '{print $X}' - Pipeline: Processamento dinâmico e inteligente de colunas / Pipeline: Intelligent and dynamic column parsing.
