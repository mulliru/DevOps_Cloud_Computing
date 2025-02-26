# 📌 Aula 03 - Azure Container Instances (ACI) e Azure Container Registry (ACR)

Este documento contém um resumo dos principais conceitos abordados na **Aula 03**, incluindo **uso de containers no Azure**, **deploy de aplicações com ACI e ACR**, e **armazenamento e gerenciamento de imagens**. 🚀

---

## 🏗 **1. Introdução ao Azure Container Instances (ACI)**

O **Azure Container Instances (ACI)** permite rodar containers na nuvem sem precisar gerenciar servidores ou infraestrutura subjacente.

📌 **Principais características:**
- **Execução isolada** de aplicações em containers.
- **Escalabilidade sob demanda**.
- **Cobrança por segundo**, reduzindo custos.
- **Opções de persistência** para armazenamento de dados.
- **Suporte para Linux e Windows**.

📌 **Quando usar ACI?**
✔️ Aplicações isoladas e temporárias.  
✔️ Automação de tarefas e workloads event-driven.  
✔️ Execução rápida sem necessidade de gerenciamento de infraestrutura.

![Azure Container Instances](imagens/aci.png)

---

## 📦 **2. Azure Container Registry (ACR)**

O **Azure Container Registry (ACR)** é um serviço gerenciado que permite armazenar e gerenciar imagens de containers no Azure.

📌 **Vantagens do ACR:**
- **Repositório privado** para imagens de containers.
- **Autenticação integrada** com o Azure Active Directory.
- **Replicação geográfica** para distribuir imagens globalmente.
- **Compatível com Docker CLI e Kubernetes**.

📌 **Principais componentes:**
| Componente | Descrição |
|------------|------------|
| **Registro** | Serviço que armazena e distribui imagens de containers. |
| **Repositório** | Coleção de imagens dentro do registro. |
| **Imagem** | Snapshot de um container, pronto para ser instanciado. |

![Azure Container Registry](devops/acr.png)

---

## 🚀 **3. Criando e Configurando um Container no Azure**

📌 **Passos para implantar um container no Azure:**
1. Criar um **ACI** via Portal do Azure ou CLI.
2. Criar um **ACR** e armazenar imagens Docker.
3. Configurar **permissões e autenticação**.
4. Fazer **deploy da aplicação** com ACI.

📌 **Comandos CLI para configuração:**
```bash
# Criar um grupo de recursos
az group create --name meu-grupo --location brazilsouth

# Criar um registro de container
az acr create --resource-group meu-grupo --name meuacr --sku Basic

# Fazer login no ACR
az acr login --name meuacr

# Criar um container no ACI a partir de uma imagem armazenada no ACR
az container create --resource-group meu-grupo \
    --name meucontainer \
    --image meuacr.azurecr.io/minha-imagem:v1 \
    --cpu 1 --memory 1 \
    --registry-login-server meuacr.azurecr.io \
    --registry-username meuacr \
    --ip-address Public --ports 80
```

📌 **Comandos Docker:**
```bash
# Build e push da imagem para o ACR
docker build -t meuacr.azurecr.io/minha-imagem:v1 .
docker push meuacr.azurecr.io/minha-imagem:v1
```

---

## 🔄 **4. Deploy de uma Aplicação no Azure Container Instances (ACI)**

📌 **Passos para criar um ACI pelo Portal:**
1. **Criar um recurso** → Selecionar **Container Instances**.
2. **Definir nome do container e selecionar o ACR**.
3. **Configurar CPU, memória e portas de acesso**.
4. **Especificar credenciais de acesso ao repositório**.
5. **Confirmar e criar o container**.
6. **Acessar a aplicação pelo IP público gerado**.

📌 **Exemplo de deploy usando CLI:**
```bash
az container create --resource-group meu-grupo \
    --name api-container \
    --image meuacr.azurecr.io/minha-api:v1 \
    --cpu 1 --memory 1 --ports 8080 \
    --registry-login-server meuacr.azurecr.io \
    --registry-username meuacr
```

---

## ✅ **5. Resumo Final**

| Conceito | Descrição |
|----------|-----------|
| **Azure Container Instances (ACI)** | Execução rápida e escalável de containers sem necessidade de gerenciar VMs. |
| **Azure Container Registry (ACR)** | Repositório privado para armazenar e gerenciar imagens de containers. |
| **CLI do Azure** | Comandos para criar e gerenciar registros e instâncias de containers. |
| **Docker CLI** | Ferramenta para build, push e gerenciamento de imagens Docker. |

---

💡 **Dica Extra:** Utilize **ACR** para gerenciar suas imagens Docker e automatizar deploys com **ACI** para um ambiente ágil e escalável! 🚀
