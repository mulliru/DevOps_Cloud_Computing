# 📌 Aula 2 - Criando um Banco SQL no Azure - PaaS

Este documento contém um resumo dos principais conceitos abordados na **Aula 11**, incluindo **conceitos do Azure SQL Database**, **modelos de implantação**, **criação de um banco de dados SQL no Azure** e **configuração e acesso externo**. 🚀

---

## 💡 **1. Introdução ao Banco de Dados SQL do Azure**

O **Azure SQL Database** é um serviço de banco de dados relacional na nuvem baseado no mecanismo do **Microsoft SQL Server**. Ele é projetado para oferecer **alta disponibilidade, escalabilidade e segurança**.

📌 **Principais características:**
- Serviço **gerenciado** e seguro.
- Baseado no mecanismo **SQL Server**.
- **Escalabilidade** vertical e horizontal.
- **Backup automático** e **restauração point-in-time**.
- **Geo-replicação** e **proteção contra falhas (failover)**.

---

## 🏗 **2. Modelos de Implantação do SQL no Azure**

Existem diferentes formas de implantação para atender a necessidades variadas:

| Modelo | Descrição |
|--------|-------------|
| **Instância Gerenciada** | Serviço totalmente gerenciado, ideal para migração de SQL Server on-premises. |
| **Banco de Dados Individual** | Banco de dados isolado e independente. |
| **Pool Elástico** | Conjunto de bancos de dados individuais que compartilham recursos. |

📌 **SQL Database Server x SQL Database:**
- **SQL Database Server** → ponto administrativo central para vários bancos de dados.
- **SQL Database** → banco de dados individual dentro do servidor.

---

## 🚀 **3. Criando um Banco de Dados SQL no Azure**

Para criar um **Banco de Dados SQL no Azure**, siga os passos:

1. **Criar um recurso** → Escolher "SQL Database".
2. **Selecionar uma assinatura e um grupo de recursos**.
3. **Definir nome do banco e do servidor**.
4. **Escolher a região mais próxima**.
5. **Definir autenticação e credenciais**.
6. **Escolher configuração de desempenho (DTU ou vCore)**.
7. **Habilitar backup e redundância**.
8. **Configurar acesso à rede e políticas de segurança**.
9. **Revisar e criar o banco de dados**.

📌 **Importante:** O nome do banco deve ser **único** e utilizar um padrão como `servidor-sqldb-rmXXXX.database.windows.net`.

---

## 🔧 **4. Configuração do Banco de Dados SQL**

Após a criação, podemos configurar diferentes aspectos do banco:

- **Escalabilidade:** escolha entre **DTU (Database Transaction Unit)** ou **vCore (CPU lógico, RAM e armazenamento configurável)**.
- **Redundância de backup:** escolha entre **local, geográfica ou zona redundante**.
- **Rede:** configure **público ou privado** (VPN, ExpressRoute, Ponto de Extremidade Privado).
- **Segurança:** habilite ou desabilite **Azure Defender**, firewall e controle de acesso.
- **Conexão:** defina **strings de conexão** para conectar aplicações ao banco.

![Configuração SQL](gestao_de_projetos/configuracao_sql.png)

---

## 📡 **5. Acesso Externo ao Banco SQL**

Podemos acessar o banco via **portal do Azure** ou ferramentas externas como:

- **SSMS (SQL Server Management Studio)**
- **Azure Data Studio**
- **CLI do Azure**
- **Query Editor no Portal Azure**

📌 **Comandos básicos para testar a conexão:**
```sql
SELECT * FROM sys.databases;
SELECT GETDATE();
```

📌 **Configuração do fuso horário:**
```sql
SELECT CURRENT_TIMEZONE() as Time_Zone_Atual, 
GETDATE() as UTC_Atual,
GETDATE() AT TIME ZONE 'UTC' AT TIME ZONE 'E. South America Standard Time' as UTC_Brazil;
```

---

## 🔄 **6. Replicação e Failover**

Para garantir **alta disponibilidade**, podemos ativar a **replicação de dados** e configurar **Grupos de Failover**:

1. Criar um **servidor secundário** para replicação.
2. Escolher **modo de replicação**.
3. Configurar **failover automático ou manual**.
4. Definir **políticas de recuperação e backup**.

---

## ✅ **7. Resumo Final**

| Tópico | Descrição |
|--------|-----------|
| **Azure SQL Database** | Banco de dados gerenciado na nuvem, baseado no SQL Server. |
| **Modelos de Implantação** | Instância Gerenciada, Banco Individual, Pool Elástico. |
| **Criação de Banco** | Escolher assinatura, grupo de recursos, servidor, autenticação, segurança. |
| **Configuração** | Escalabilidade (DTU ou vCore), segurança, acesso de rede, backup. |
| **Acesso Externo** | SSMS, Azure Data Studio, CLI do Azure, Query Editor. |
| **Replicação** | Failover e geo-replicação para alta disponibilidade. |

---

💡 **Dica Extra:** Utilize **Grupos de Failover** e **Geo-replicação** para melhorar a resiliência do banco de dados. 🚀
