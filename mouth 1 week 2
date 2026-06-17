"""# 🚀 Kali Linux SOC & Observability Lab (Loki + Promtail + Grafana)

## 📌 Visão Geral do Projeto / Project Overview
* **Data / Date:** Quarta-feira, 17 de Junho de 2026 (Wednesday, June 17, 2026)
* **Semana de Estudos / Study Week:** Semana 25 / Week 25 - Junho/June 2026
* **Autor / Author:** Hiago
* **Objetivo / Objective:** Construção, depuração e operação de uma infraestrutura local de monitoramento de logs (SIEM/Observabilidade) integrada ao sistema operacional Kali Linux para simulação de Threat Hunting e análise de segurança em tempo real.

---

## 🇧🇷 [PORTUGUÊS] Documentação do Projeto

### 1. Arquitetura da Solução
O laboratório foi estruturado utilizando containers **Docker** para garantir isolamento, performance e facilidade de deploy. A stack é composta por:
* **Promtail:** Agente coletor de logs que monitora os arquivos de eventos do sistema operacional (como os logs de renderização visual e interface gráfica do Xorg em `/var/log/Xorg.0.log`).
* **Grafana Loki:** Mecanismo de agregação de logs altamente otimizado, responsável por indexar os metadados dos eventos recebidos.
* **Grafana Dashboard:** Plataforma de visualização e análise de dados utilizada para criar métricas matemáticas e painéis de monitoramento analítico.

### 2. Desafios de Engenharia Resolvidos (Troubleshooting)
Durante o desenvolvimento no dia de hoje, foram identificados e mitigados problemas reais de infraestrutura de TI:
* **Gestão de Armazenamento no Docker:** Identificação e limpeza de volumes e imagens antigas que estavam saturando o disco rígido do Kali Linux (`Docker Prune`), liberando espaço para os novos serviços.
* **Transição de Tipos de Dados no Grafana:** Resolução do erro crítico *"Data is missing a number field"*. O problema ocorria ao tentar renderizar linhas de texto puro em gráficos temporais. Corrigido com a implementação de funções agregadoras.
* **Mapeamento de Logs Modernos do Linux:** Análise do comportamento do ecossistema do Kali Linux atual, compreendendo a migração de arquivos textuais tradicionais (`syslog`, `auth.log`) para o armazenamento binário do `systemd-journald`, ajustando os escopos de monitoramento para os logs ativos do Xorg.

### 3. Comandos Executados na Unha (Hands-on)
Para fixação do conhecimento e autonomia técnica, os seguintes comandos foram digitados e validados manualmente no terminal do Kali Linux e no console do Grafana:

#### Limpeza de Infraestrutura (Terminal Kali):

Saída de código

Arquivo README.md criado com sucesso.

```bash
# Limpeza profunda do ambiente Docker para liberação de espaço em disco
sudo docker system prune -a --volumes

Consultas Analíticas e Matemáticas (Grafana LogQL):
Plaintext

# Conversão de logs em métricas numéricas para geração de gráficos de linha (Contagem por minuto)
count_over_time({service_name="varlogs"}[1m])

Técnicas de Threat Hunting e Filtragem de String (Grafana Explore):
Plaintext

# Filtragem avançada e isolamento de eventos específicos do servidor Xorg
{service_name="varlogs"} |= "EventToCore"

4. Resultados Obtidos

    Criação de um Dashboard híbrido contendo volumetria quantitativa de logs.

    Domínio prático da ferramenta Explore do Grafana com uso do modo Live Tail (atualização de logs em tempo real).

    Compreensão analítica dos pacotes instalados no sistema e detecção visual de anomalias por meio de marcações (sublinhados) automáticas do Loki.

🇺🇸 [ENGLISH] Project Documentation
1. Solution Architecture

The lab was built using Docker containers to ensure isolation, performance, and easy deployment. The stack consists of:

    Promtail: Log shipper agent that monitors OS event files (such as graphical interface and rendering logs from Xorg in /var/log/Xorg.0.log).

    Grafana Loki: Highly optimized log aggregation engine, responsible for indexing event metadata.

    Grafana Dashboard: Data visualization and analytics platform used to create mathematical metrics and security monitoring panels.

2. Engineering Challenges Solved (Troubleshooting)

During today's session, real-world IT infrastructure and observability issues were identified and mitigated:

    Docker Storage Management: Identified and cleared old volumes and images that were saturating the Kali Linux disk space (Docker Prune), freeing up space for new services.

    Grafana Data Type Transition: Resolved the classic "Data is missing a number field" error. This issue occurred when attempting to render raw text lines inside time-series charts. Fixed by implementing log aggregation functions.

    Modern Linux Log Mapping: Analyzed the behavior of the current Kali Linux ecosystem, understanding the migration from traditional text files (syslog, auth.log) to binary storage managed by systemd-journald, adjusting the monitoring scope to active Xorg logs.

3. Handwritten Commands (Hands-on)

To enforce knowledge retention and technical autonomy, the following commands were manually typed and validated in the Kali Linux terminal and Grafana console:
Infrastructure Cleanup (Kali Terminal):
Bash

# Deep cleanup of the Docker environment to free up disk space
sudo docker system prune -a --volumes

Analytical and Mathematical Queries (Grafana LogQL):
Plaintext

# Converting raw logs into numerical metrics to generate line charts (Count per minute)
count_over_time({service_name="varlogs"}[1m])

Threat Hunting Techniques & String Filtering (Grafana Explore):
Plaintext

# Advanced filtering and isolation of specific Xorg server events
{service_name="varlogs"} |= "EventToCore"

4. Outcomes & Deliverables

    Built a hybrid Dashboard containing quantitative log volumes.

    Practical mastery of Grafana's Explore tool, leveraging the Live Tail mode (real-time stream processing).

    Analytical understanding of system package installations and visual anomaly detection using Loki's automatic highlights (underlines).

🛠️ Desenvolvido por Hiago durante a trilha de Engenharia de Logs e SOC / Developed by Hiago during the Logs Engineering & SOC training track.
"""

with open("README.md", "w", encoding="utf-8") as f:
f.write(readme_content)

print("Arquivo README.md criado com sucesso.")

Seu arquivo Markdown (.md) pronto para o GitHub está disponível!
[file-tag: code-generated-file-0-1781704842178878634]

O texto já está totalmente atualizado com o dia de hoje, **Quarta-feira, 17 de Junho de 2026 (Semana 25)**, organizado de forma impecável tanto em **Português** quanto em **Inglês**. Ele detalha toda a sua trajetória de hoje: a limpeza do Docker, a correção do erro do gráfico, as consultas em LogQL digitadas na unha e o monitoramento em tempo real (Live Tail).

### 🛠️ Como copiar e colar agora no seu GitHub:

1. Clique no link acima para abrir ou baixar o arquivo `README.md` gerado.
2. Copie todo o conteúdo em texto dele.
3. Vá no seu perfil do GitHub e entre no repositório do seu laboratório (se não tiver, crie um com o nome `kali-soc-observability-lab`).
4. Clique em **Add file** -> **Create new file**, dê o nome exato de `README.md` e cole todo o código lá dentro.
5. Salve clicando em **Commit changes**.

O seu perfil vai ficar extremamente profissional e pronto para chamar a atenção de qualquer recrutador da área de segurança e SOC. Parabéns pelo excelente trabalho no dia de hoje, Hiago! Descanse bem e até a próxima aula!
