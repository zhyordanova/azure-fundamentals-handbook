# AZ-900 Мнемоники и трикове за запомняне

> **Memory aids, not automatic answer rules.** Първо определи изискването, обхвата и ограниченията; използвай мнемониките само за потвърждение.


## 1. Облачни модели — "ПЧХ" (Публичен, Частен, Хибриден)

```
П = Публичен = Плащаш само за ползване (OpEx), споделен
Ч = Частен = Частна инфраструктура, максимален контрол
Х = Хибриден = Хем тук, хем там (комбинация)
```

## 2. IaaS / PaaS / SaaS — "Пицата"

Представи си пица:
- **IaaS** = Купуваш съставки и правиш пица сам (управляваш OS, приложенията и данните; доставчикът управлява физическата инфраструктура)
- **PaaS** = Даваш тестото на готвач, той пече, ти слагаш топинга (фокус на приложението)
- **SaaS** = Поръчваш готова пица с доставка (ползваш готовото приложение, но все още управляваш своите данни и достъп)

**Мнемоника за отговорност (от най-много към най-малко):**
```
IaaS → PaaS → SaaS
"I Pizza Stuff" = I (IaaS) do more, S (SaaS) does less
```

## 3. Йерархия на Azure — "МСГР" (Мандра, Сирене, Глина, Ръце)

```
Management Groups  →  М
Subscriptions      →  С
(Resource) Groups  →  Г
Resources          →  Р

Отгоре надолу: "Много Стари Граждани Работят"
```

## 4. Storage Redundancy — "L / Z / G / GZ" (Локално / Зони / География / Зони + География)

```
L = LRS = Local (копия в един физически обект в регион)
Z = ZRS = Zones (копия между availability zones в един регион)
G = GRS = Geo (репликация и във втори регион)
GZ = GZRS = Zones + Geo (зони в основния регион + втори регион)

Въпрос за изпита: само ZONE, само REGION или BOTH?
ZONE → ZRS | REGION → GRS | BOTH → GZRS
```

## 5. Defense in Depth — 7 слоя "ФИМПИАД"

```
Ф = Физическа сигурност
И = Идентичност и достъп
М = Мрежов периМетър (DDoS, Firewall)
П = мрежа (Packets) — NSG, сегментация
И = Изчислителни ресурси (Compute)
А = Приложение (Application)
Д = Данни (най-вътре!)
```

Или по-просто, отвън навътре:
```
"Физически Идиот Минава През Изход А Данните остават вътре"
```

## 6. Zero Trust — "ПМП"

```
П = Проверявай изрично (Verify explicitly)
М = Минимални привилегии (Least privilege)
П = Приемай пробив (Assume breach)
```

## 7. VPN vs ExpressRoute — "В = Видим, Е = Ексклузивен"

```
VPN Gateway = Видим (минава ПРЕЗ интернет, криптиран)
ExpressRoute = Ексклузивен (ЧАСТНА линия, не интернет)

"Dedicated private connection, no public Internet" → обикновено ExpressRoute
"Encrypted tunnel over public Internet" → обикновено VPN Gateway
Провери и endpoints/constraints, преди да избереш.
```

## 8. Azure Advisor — "CROPS" (5 категории)

```
C = Cost (Разходи)
R = Reliability (Надеждност)
O = Operational Excellence (Оперативно съвършенство)
P = Performance (Производителност)
S = Security (Сигурност)

"CROPS" — като реколта от препоръки!
```

## 9. Resource Lock типове — "ДЧ"

```
Д = Delete (CanNotDelete) — можеш да четеш и променяш, НЕ можеш да триеш
Ч = Четене (ReadOnly) — можеш САМО да четеш, нищо друго

ReadOnly е ПО-РЕСТРИКТИВЕН от CanNotDelete!
```

## 10. Pricing vs TCO vs Cost Mgmt — "ПМС" (Планирам, Мигрирам, Следя)

```
П = Azure Pricing Calculator = ПЛАНИРАМ (прогнозна цена на Azure услуги)
М = TCO анализ / Azure Migrate business case = МИГРИРАМ (общи разходи и потенциални спестявания)
С = Microsoft Cost Management = СЛЕДЯ (реални разходи, тенденции, бюджети)

Това са различни въпроси, не задължителни последователни стъпки.
Старият Azure TCO Calculator не е инструментът, който препоръчваме за текущата подготовка.
```

## 11. NSG vs Firewall — "НБП" (Ниво, Безплатен, Платен)

```
NSG = Ниво subnet/NIC, Безплатен, прости правила (Layer 4)
Firewall = Пълен, Платен, stateful + FQDN filtering (Layer 4+7)

"NSG = Ниво subnet/NIC"
"Firewall = Централизирана защита и филтриране"

Цената не е основният критерий за избор; търси типа защита.
```

## 12. SLA числа — Запомни само 2!

```
99.9% = ~43.2 минути/30-дневен месец ("Три деветки ≈ 43")
99.99% = ~4.32 минути/30-дневен месец ("Четири деветки ≈ 4.3")

Всяка допълнителна 9 = 10× по-малко downtime
```

Другите се извличат:
- 99% = ~7.2 часа за 30 дни
- 99.95% = ~21.6 минути за 30 дни

*Това са приблизителни стойности за 30-дневен месец, не обещание за реален downtime.*

## 13. Blob Storage Tiers — "HCCA" (от горещо към замразено)

```
H = Hot (честo достъпвани данни, скъпо съхранение, евтин достъп)
C = Cool (рядко; обичайно минимален период 30 дни)
C = Cold (много рядко; обичайно минимален период 90 дни)
A = Archive (офлайн; обичайно минимален период 180 дни; изисква rehydration)

"По-студено = По-евтино за съхранение, По-скъпо за достъп"
```

## 14. Compute услуги — "VFACK"

```
V = Virtual Machines (пълен контрол, IaaS)
F = Functions (serverless, event-driven)
A = App Service (PaaS за уеб)
C = Container Instances (единични контейнери)
K = Kubernetes Service (оркестрация)

"VFACK — Virtual Functions And Container Kubernetes"
```

## 15. Authentication vs Authorization — "КойМоже"

```
AuthN = Кой си ТИ? (Authentication = Идентичност)
AuthZ = Какво МОЖЕШ? (Authorization = Разрешения)

"N = Name (кой си)" 
"Z = authoriZation (какво е позволено)"
```

## 16. Management Group Policy Inheritance — "Водопад"

```
Policies течат НАДОЛУ (като водопад):
Management Group → Subscription → Resource Group → Resource

Ако приложиш policy на Management Group ниво,
тя се прилага към вложените scopes и ресурси, освен когато има приложимо изключение или exemption.
```

## 17. Tags — "НЕ наследяват!"

```
⚠️ КАПАН на изпита: Tags НЕ се наследяват автоматично!
Tag на Resource Group НЕ отива на ресурсите в нея.
(За разлика от Policies, които се наследяват)

Запомни: "Tags не се наследяват автоматично". Azure Policy може да добавя/поправя тагове чрез подходящи policy effects — не е задължително да ги слагаш ръчно навсякъде.
```

## 18. Entra ID vs On-prem AD

```
On-premises AD = Kerberos, LDAP, Group Policy
Entra ID = OAuth, SAML, OpenID Connect, Conditional Access

"AD DS = домейн услуги и традиционни протоколи"
"Entra ID = облачна идентичност и модерна автентикация"

Това не означава, че on-prem AD е неизползваем или че Entra ID е директен заместител на всички AD DS функции.
```

## 19. Бързи асоциации за изпита

| Ключова дума във въпроса | Отговор |
|--------------------------|---------|
| "private connection" | ExpressRoute |
| "over the internet" | VPN Gateway |
| "serverless" | Azure Functions |
| "full OS control" | Virtual Machines |
| "without managing infrastructure" | PaaS (App Service) |
| "unstructured data" | Blob Storage |
| "SMB file share" | Azure Files |
| "globally distributed NoSQL" | Azure Cosmos DB |
| "prevent deletion" | Resource Lock |
| "enforce standards" | Azure Policy |
| "who can access" | RBAC |
| "identity service" | Microsoft Entra ID |
| "recommendations" | Azure Advisor |
| "metrics and alerts" | Azure Monitor |
| "before deploying" | Pricing Calculator |
| "migration savings", "business case" | Azure Migrate business case / TCO analysis |
| "track spending" | Cost Management |
| "secrets and keys" | Key Vault |
| "secure RDP without public IP" | Azure Bastion |
| "hybrid management" | Azure Arc |
| "repeatable governance" | Azure Policy + IaC (ARM/Bicep), според изискването |
| "containers without VMs" | Container Instances |
| "container orchestration" | AKS |

## 20. Финален трик: "Ако не знаеш — елиминирай"

На изпита:
1. **Прочети ВСИЧКИ отговори** преди да избереш
2. **Елиминирай 2 очевидно грешни** — обикновено са налице
3. **Търси ключови думи** — Microsoft обича да слага hints в самия въпрос
4. **Не разчитай на статистически трикове** за "всички горепосочени" — преценявай всяка опция
5. **Най-подходящият отговор** изпълнява изискванията без ненужна функционалност

```text
Requirement → Scope → Constraints → Valid options → Best fit
```
