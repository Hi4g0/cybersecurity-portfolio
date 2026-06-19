# 📅 Aula 3: BURP SUITE AVANÇADO + Web Vulnerabilities - 19/06/2026

## 🎯 Objetivo da Aula
* Mapear a anatomia de requisições HTTP maliciosas na camada de aplicação (Layer 7).
* Identificar falhas de hardening web e ausência de cabeçalhos de segurança (Security Headers).
* Desenvolver um script automatizado em Python para auditoria defensiva de servidores web.

## ⏱️ Duração
* **Teoria:** 5min
* **Prática:** 2h30min
* **Total:** 2.5h

---

## 🎯 Nível Atual
* **Roadmap:** Semana 3 Mês 1 Kali Linux (Adaptado para SOC Analyst)
* **Conhecimento:** Análise de logs do sistema operacional e auditoria de requisições web (Layer 7).

---

## 🛠️ Prática (2h30min)

### Interação Real no Terminal (Hiago)

```bash
┌──(hiago㉿kali)-[~]
└─$ python3 web_security_scanner.py
Digite a URL ou IP do servidor web para analisar (Ex: exemplo.com): example.com
[*] Iniciando Varredura de Segurança em: [http://example.com](http://example.com)

============================================================
📊 RELATÓRIO DE AUDITORIA DE SEGURANÇA WEB (SOC LAYER 7) 🚨
============================================================
❌ X-Frame-Options: AUSENTE!
   └─ Impacto: Protege contra ataques de Clickjacking (sequestro de clique).
❌ X-Content-Type-Options: AUSENTE!
   └─ Impacto: Evita que o navegador execute arquivos com tipos MIME incorretos.
❌ Content-Security-Policy: AUSENTE!
   └─ Impacto: Controla quais recursos a página pode carregar, mitigando XSS.
❌ Strict-Transport-Security: AUSENTE!
   └─ Impacto: Força o uso de conexões seguras HTTPS (HSTS).
============================================================
🚨 STATUS DO HOST: ALTO RISCO (Múltiplas falhas de hardening web)
============================================================
