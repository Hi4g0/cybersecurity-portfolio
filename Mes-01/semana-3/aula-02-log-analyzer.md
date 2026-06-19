# 📅 Aula 2: LOG ANALYSIS AVANÇADO + Automação com Python - 19/06/2026

## 🎯 Objetivo da Aula
* Mapear e interpretar tentativas de invasão por Força Bruta (Brute Force) diretamente no gerenciador de logs moderno do Linux (`journald/journalctl`).
* Desenvolver um script analisador de logs automatizado em Python focado em engenharia de detecção (Blue Team).

## ⏱️ Duração
* **Teoria:** 5min
* **Prática:** 2h30min
* **Total:** 2.5h

---

## 🎯 Nível Atual
* **Roadmap:** Semana 3 Mês 1 Kali Linux (Adaptado para SOC Analyst)
* **Conhecimento:** Domínio de Docker, Loki, Promtail, LogQL e agora Automação de Logs com Python.

---

## 📚 Teoria (5min)

### O que é Log Analysis Avançado de Autenticação?
É o processo de monitorar e auditar os subsistemas de autorização do Linux (`SYSLOG_FACILITY=4`). Em sistemas modernos, em vez de arquivos estáticos, esses eventos são centralizados de forma binária e segura pelo `journald`.

### Por que usar Log Analysis com Python?
No dia a dia de um SOC, o volume de logs de autenticação é massivo. Criar scripts personalizados em Python permite que o analista crie regras de correlação customizadas e extraia indicadores de comprometimento (IoCs) — como IPs de atacantes — de forma infinitamente mais rápida que processos manuais.

---

## 🛠️ Prática (2h30min)

### Logs Reais do Terminal do Estudante (Hiago)

Durante a aula, foram executados os testes práticos de chamadas de sistema, simulação de falha de login via SSH e a execução da ferramenta desenvolvida:

```bash
┌──(hiago㉿kali)-[~]
└─$ sudo python3 log_analyzer.py                  
[*] Iniciando Análise Avançada via Journalctl (Ambiente Moderno)...

==================================================
🚨 RELATÓRIO DE INCIDENTES SOC - DETECÇÃO DE BRUTE FORCE 🚨
==================================================
🔹 Total de falhas de autenticação detectadas: 1

🎯 Top IPs Atacantes Identificados:
 -> IP: 127.0.0.1 (LocalHost) | Tentativas Falhas: 1 | Status: ℹ️ Atividade Isolada
==================================================
