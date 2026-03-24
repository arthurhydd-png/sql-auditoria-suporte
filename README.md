#  Consultas SQL para Auditoria e Suporte Técnico

###  O que este projeto resolve?
As consultas foram estruturadas para resolver problemas reais de um Analista de Sistemas:
* **Priorização de Chamados:** Identificação automática de tickets abertos há mais de 48 horas.
* **Diagnóstico de Login:** Investigação de inconsistências em contas de usuários (ex: usuários tentando acessar sistemas com status 'Inativo').
* **Análise de Incidentes:** Agrupamento de erros por cliente para identificar problemas sistêmicos (bugs) em vez de erros isolados.

### 🛠️ Comandos SQL Utilizados
- `SELECT` / `FROM` / `WHERE` (Filtragem de dados)
- `JOIN` (Relacionamento entre tabelas de Clientes e Chamados)
- `GROUP BY` / `HAVING` (Agrupamento e métricas de erro)
- `ORDER BY` (Organização por criticidade)

---
### 📂 Como utilizar
Os scripts estão organizados por tipo de investigação (Logins, Performance de Fila, Erros de Integração). Ideal para uso em ferramentas como DBeaver, MySQL Workbench ou direto via terminal.
