
---

## Mandarin-ecosysteem

### Definitie 📝
Het **Mandarin-ecosysteem** is het geheel van onderling samenwerkende agents, artefacten, governance-structuren, capabilities en workspaces die gezamenlijk waardecreatie mogelijk maken volgens de Mandarin-architectuurprincipes.

### Kenmerken ⭐
- Omvat alle agents, artefacten, governance-artefacten, capabilities en workspaces
- Biedt de context en randvoorwaarden voor samenwerking en waardecreatie
- Is uitbreidbaar en aanpasbaar zonder verlies van samenhang
- Waarborgt expliciete contracten en governance
- Is onafhankelijk van specifieke tooling of implementatie

### Wat het niet is ❌
- Geen losse verzameling van tools of documenten
- Geen statisch systeem
- Geen enkelvoudige applicatie

### Voorbeelden 💡
- Een organisatiebrede omgeving waarin Mandarin-agents samenwerken aan waardecreatie
- Een ecosysteem van agents, artefacten en governance-structuren binnen een project

### Synoniemen 🏷️
- Architectuurecosysteem
- Samenwerkingsomgeving

### Analogieën 🔄
- Vergelijkbaar met een enterprise-ecosysteem in enterprise architectuur
- In softwareontwikkeling: een platform of framework waarin verschillende componenten samenwerken

### Toelichting (optioneel) 💬
Het **Mandarin-ecosysteem** vormt de overkoepelende context waarbinnen alle Mandarin-concepten samenkomen en waarde leveren. Het is ontworpen om adaptief, expliciet en samenhangend te zijn.

---
## Mandarin-capability

### Definitie 📝
Een **Mandarin-capability** is een duurzaam, herbruikbaar vermogen van het **Mandarin-ecosysteem** om een bepaald type waarde te realiseren, onafhankelijk van specifieke **agents**, tooling of uitvoering, en inzetbaar binnen één of meer **value stream fasen**.

### Kenmerken ⭐
- Beschrijft wat het ecosysteem kan
- Is stabiel in de tijd
- Is niet aan één agent gekoppeld
- Kan door meerdere agents gerealiseerd worden
- Wordt ingezet door value stream fasen, maar hoort daar niet bij
- Bestaat ook als er (tijdelijk) geen agent actief is

### Wat het niet is ❌
- Geen concrete handeling
- Geen agent
- Geen artefact

### Voorbeelden 💡
- Veranderhypotheses formuleren
- Werk expliciet en ordenbaar maken
- Architectuur visualiseren
- Artefacten publiceren

- **Artefact**
### Synoniemen 🏷️
Artefact
- Vermogen

### Analogieën 🔄
- Vergelijkbaar met een capability in enterprise architectuur
- In softwareontwikkeling: een herbruikbare service of functie

### Toelichting (optioneel) 💬
Dit zijn vermogens, geen handelingen.

---
## Agent-capability

### Definitie 📝
Een **agent-capability** is een expliciet aanroepbare functie van een **agent**, vastgelegd in een **agent-contract**.

### Kenmerken ⭐
- Eén capability = één intent / operation
- Capability bestaat alleen in het contract
- Capability is aanroepbaar (uitvoerbaar), niet beschrijvend

### Wat het niet is ❌
- Geen beschrijvende eigenschap
- Geen interne implementatie
- Geen losstaande functie buiten contract

### Voorbeelden 💡
- workflow-architect.1-ontwerp.workflow
- vertaler.vertaal

### Synoniemen 🏷️
- Intent
- Intentie

### Analogieën 🔄
- Vergelijkbaar met een operation in een API
- In softwareontwikkeling: een expliciete functie of methode

### Toelichting (optioneel) 💬
Soms wordt dit de prompt genoemd. In Mandarin noemen we dit niet de prompt!
---## Agent-contract

### Definitie 📝
Een **agent-contract** definieert formeel de **intent** (**agent-capability**) van de **agent**, de input die het verwacht en de output (**artefact**) die hij creëert of antwoorden die hij geeft, evenals de beleidsregels en beperkingen waaronder die mogelijkheden toegankelijk zijn.
 
 - Beschrijft één **agent-capability**
 - Agent-contract bestaat om **agent-capabilities** te beschrijven
 - Elke **agent-capability** is expliciet, afzonderlijk aanroepbaar, extern zichtbaar
 - **Agent-capability** bestaat niet onafhankelijk van het agent-contract
 - **Agent-capability** = wat het agent-contract exposeert
 - Agent-contract beschrijft inputs en outputs (welke data vereist, welke data teruggegeven, formaat/structuur)
 - Interface-definitie, geen implementatie
 - Uitvoerende agents produceren altijd een artefact
 - Agent-contract bevat constraints en policies (gebruiksbeperkingen, validatieregels, kwaliteitsverwachtingen, foutcondities, security/accessregels)
 - Governance zit in het agent-contract
 - Agent-contract is extern en bindend (stabiel, zelfstandig, leidend)
 - Service-consumenten mogen alleen vertrouwen op het agent-contract
 - Interne veranderingen toegestaan zolang agent-contract ongewijzigd blijft
 - Agent-contract beschrijft nooit de interne werking (geen processtappen, algoritmen, technische keuzes, implementatiedetails)

### Wat het niet is ❌
 - Geen beschrijving van interne werking
 - Geen implementatiedetails
 - Geen impliciet agent-contract

### Voorbeelden 💡
 - Agent-contract voor een publicatie-agent
 - Agent-contract voor een analyse-agent-capability

### Synoniemen 🏷️
Value artefact
Resultaat-artefact
 - Service contract
 - Interface contract

### Analogieën 🔄
 - Vergelijkbaar met een API-agent-contract in softwareontwikkeling
 - In SOA: WSDL of service agreement

### Toelichting (optioneel) 💬
Totdat charter en agent-contract bestaan, is dit géén agent, maar een agent-capability-voornemen.


---
## Agent-boundary

### Definitie 📝
Een **agent-boundary** is de expliciet vastgelegde servicegrens waarbinnen een **agent** zijn interne werking, **governance** en **agent-capabilities** organiseert, en waarbuiten interactie uitsluitend plaatsvindt via formele **agent-contracts**.

### Kenmerken ⭐
- Bepaalt wat tot de agent behoort en wat daarbuiten ligt
- Scheidt interne werking van externe interactie
- Is leidend voor governance en autonomie van de agent
- Waarborgt dat alleen via contracten interactie mogelijk is
- Is de eerste en verplichte stap in agent-ontwerp

### Wat het niet is ❌
- Geen impliciete grens
- Geen technische implementatiegrens
- Geen optionele ontwerpkeuze

### Voorbeelden 💡
- De mapstructuur van een agent in een repository
- De scope van een agent in een C4-model

### Synoniemen 🏷️
- Agent-grens
- Service boundary

### Analogieën 🔄
- Vergelijkbaar met een bounded context in DDD, een microservice boundary, of een package boundary in OOP
- In SOA: service boundary waarbinnen interne details verborgen blijven
- Workspace als project workspace, repository, of solution folder
- In DevOps: deployment workspace of CI/CD pipeline context

### Toelichting (optioneel) 💬
Het expliciet definiëren van de agent-boundary voorkomt dat agents samenvallen met tooling of prompts, verantwoordelijkheden vervagen of contracten impliciet worden. Alles binnen de boundary valt onder het agent-charter, de bijbehorende agent-contracten en de interne governance van de agent. Alles buiten de boundary is alleen toegankelijk via formele, expliciete contracten.

---
## Mandarin-artefact

### Definitie 📝
Een **Mandarin-artefact** is een duurzame, expliciete en overdraagbare vastlegging van resultaat of besluitvorming, die binnen een **value stream fase** waarde representeert en als input kan dienen voor vervolgwerk.

### Kenmerken ⭐
- Duurzaam (blijft bestaan)
- Expliciet (leesbaar, inspecteerbaar)
- Overdraagbaar (kan door anderen of agents gebruikt worden)
- Waarde-dragend (vertegenwoordigt gerealiseerde waarde)

### Wat het niet is ❌
- Geen tijdelijke notitie
- Geen impliciete kennis
- Geen niet-overdraagbaar resultaat

### Voorbeelden 💡
- Zie: **waarde-artefacten** en **governance-artefacten**

### Synoniemen 🏷️
- **Artefact**

### Analogieën 🔄
- Vergelijkbaar met een **artefact** in softwareontwikkeling (build-artifact, document)
- In projectmanagement: **deliverable**
- In DDD: **Aggregate Result** of **Documented Outcome**

### Toelichting (optioneel)
Er zijn twee hoofdklassen van **artefacten**: **governance-artefacten** en **waarde-artefacten**.
---## Governance-artefact

### Definitie 📝
Een **governance-artefact** is een normatieve of contractuele vastlegging die het functioneren van het **Mandarin-ecosysteem** mogelijk maakt, maar zelf geen directe waarde levert in een **value stream fase**.

### Kenmerken ⭐
- Levert geen business- of oplossingswaarde
- Is geen output van value stream fasen
- Maakt waardecreatie mogelijk
- Is randvoorwaardelijk

### Wat het niet is ❌
- Geen waarde-artefact
- Geen resultaat van een value stream fase
- Geen input voor volgende fasen

### Voorbeelden 💡
- Agent-charter
- Agent-contract (.agent.md)
- Prompt (.prompt.md)
- Templates
- Beleid / constitutie

### Synoniemen 🏷️
- **Systeem-artefact**
- **Ecosysteem-artefact**

### Analogieën 🔄
- Vergelijkbaar met **policies**, **API contracts**, **infrastructuurdefinities** in DevOps
- In SOA: **WSDL's**, **policies**, **service agreements**

### Toelichting (optioneel) 💬
Deze artefacten horen bij het ecosysteem, niet bij een value stream fase.

---
## Waarde-artefact

### Definitie 📝
Een **waarde-artefact** is een **artefact** dat expliciet het resultaat van een **value stream fase** vastlegt en daarmee gerealiseerde waarde vertegenwoordigt.

### Kenmerken ⭐
- Ontstaat binnen een value stream fase
- Vertegenwoordigt voortgang en waarde
- Is input voor volgende fasen
- Wordt geleverd door uitvoerende agents

### Wat het niet is ❌
- Geen governance-artefact
- Geen randvoorwaardelijk document
- Geen interne notitie

### Voorbeelden 💡
- Logisch datamodel
- Architectuurmodel
- C4-DSL
- SQL / PostgreSQL-schema
- Requirements, specificaties
- Ontwerpdocumenten
- Code, configuratie

### Synoniemen 🏷️
Value artefact
Resultaat-artefact

### Analogieën 🔄
- Vergelijkbaar met business deliverables, user stories, output van een pipeline
- In DDD: Entities of Value Objects als resultaat van een proces

### Toelichting (optioneel) 💬
Waarde-artefacten zijn de tastbare resultaten van het werk binnen value streams.
---## Adviserende agent

### Definitie 📝
Een **adviserende agent** levert uitsluitend informatieve output (advies, analyse, overzicht) en veroorzaakt geen duurzame wijziging in het **Mandarin-ecosysteem**.

### Kenmerken ⭐
- Maakt geen artefacten
- Wijzigt geen bestanden
- Veroorzaakt geen side-effects
- Produceert tekstuele of visuele output
- Output is ephemeral (verdwijnt na gebruik)
- Output is niet-normatief
- Geen templates vereist
- Output is niet bedoeld voor downstream automatisering

### Wat het niet is ❌
- Geen uitvoerende agent
- Geen beheeragent
- Geen agent die artefacten of structurele wijzigingen veroorzaakt

### Voorbeelden 💡
- Analyse- of adviesagent
- Agent die alleen rapportages of overzichten maakt

### Synoniemen 🏷️
- Adviesagent
- Analyseagent

### Analogieën 🔄
- Function-style service in SOA
- Query/read-only service

### Toelichting (optioneel) 💬
De adviserende agent ondersteunt met informatie, maar levert geen artefacten of structurele waarde.

---
## Uitvoerende agent

### Definitie 📝
Een **uitvoerende agent** levert duurzame **artefacten** als expliciet onderdeel van een **value stream** en veroorzaakt daarmee structurele wijziging in de **workspace**.

### Kenmerken ⭐
- Maakt artefacten (documenten, modellen, DSL, code, configuratie)
- Output is persistent
- Output is downstream input voor andere agents of mensen
- Output MOET voldoen aan een vooraf gedefinieerd template
- Template is verplicht onderdeel van capability policy
- Contract faalt als template ontbreekt

### Wat het niet is ❌
- Geen adviserende agent
- Geen beheeragent
- Wijzigt geen governance of workspace-inrichting
- Geen agent die alleen informatie levert

### Voorbeelden 💡
- Agent die code, modellen of documenten oplevert
- Agent die een artefact toevoegt aan de workspace

### Synoniemen 🏷️
- Producerende agent
- Artefact-agent

### Analogieën 🔄
- Resource-creating service in SOA
- Command met persistent effect
- Write-side van een value stream

### Toelichting (optioneel) 💬
De uitvoerende agent levert tastbare resultaten en structurele wijzigingen in de workspace.

---
## Beheeragent

### Definitie 📝
Een **beheeragent** wijzigt de operationele staat van de **workspace** of runtime-omgeving, zonder business-**artefacten** te produceren.

### Kenmerken ⭐
- Wijzigt bestanden zoals .gitignore, folders, config
- Start/stop containers of tooling
- Produceert geen business-artefacten
- Levert geen inhoudelijke waarde aan de value stream

### Wat het niet is ❌
- Geen adviserende agent
- Geen uitvoerende agent
- Geen agent die artefacten of structurele waarde levert

### Voorbeelden 💡
- Agent die .gitignore of config-bestanden aanpast
- Agent die een container start of stopt

### Synoniemen 🏷️
- Operationele agent
- Systeemagent

### Analogieën 🔄
- Administrative/management API in SOA
- Infrastructure service
- Control-plane gedrag

### Toelichting (optioneel) 💬
De beheeragent ondersteunt de operationele kant van de workspace, maar levert geen artefacten of directe waarde in de value stream.

---
## Value stream

### Definitie 📝
Een **value stream** is een expliciet gedefinieerde keten van waarde-creërende stappen die samen leiden tot een herkenbaar resultaat, en die richting geeft aan welke **artefacten**, **mandarin-agents** en beslissingen bijdragen aan die waarde.

### Kenmerken ⭐
- Definieert stappen, geen taken
- Is artefact-gericht
- Is agent-agnostisch, maar agent-sturend
- Meerdere value streams per ecosysteem mogelijk

### Wat het niet is ❌
- Geen workflow of proces
- Geen lijst van taken
- Geen beschrijving van implementatie

### Voorbeelden 💡
- IT-development value stream
- Kennispublicatie value stream
- Werkvoorbereiding value stream

### Synoniemen 🏷️
- Waardestroom

### Analogieën 🔄
- Vergelijkbaar met een waardeketen in Lean of een pipeline in DevOps

### Toelichting (optioneel) 💬
Value streams structureren het werk en maken waardecreatie inzichtelijk via expliciete stappen en artefacten.

---
## Value stream fase

### Definitie 📝
Een **value stream fase** is een logisch afgebakende, waarde-creërende eenheid binnen een **value stream**, waarin een specifiek type waarde tot stand komt, herkenbaar via expliciete **artefacten** en kwaliteitscriteria, onafhankelijk van de wijze van uitvoering.

### Kenmerken ⭐
- Is een waardemoment, geen handeling
- Beschrijft wat voor waarde ontstaat, niet hoe
- Heeft een helder doel binnen de value stream
- Wordt zichtbaar via expliciete artefacttypen en bijbehorende kwaliteitsverwachtingen
- Vormt context voor agents die daarin opereren
- Produceert geen taken en stuurt geen workflow

### Wat het niet is ❌
- Geen proces
- Geen stappenplan
- Geen activiteit of taak
- Geen agent of rol
- Geen implementatiefase

### Voorbeelden 💡
- Analyse-fase
- Ontwerpfase
- Realisatie-fase

### Synoniemen 🏷️
- Waardemoment
- Fase

### Analogieën 🔄
- Vergelijkbaar met een stage in een pipeline
- In Lean: een waardemoment in de waardestroom

### Toelichting (optioneel) 💬
**Value stream fasen** structureren het werk en maken expliciet welke waarde in elke stap ontstaat. **Artefacten** zijn herleidbaar van **mandarin-agent** → **value stream fase** → **value stream**.

---
## Workspace

### Definitie 📝
Een **workspace** is een afgebakende werkomgeving die wordt ingericht om één of meer **value stream fasen** uit te werken, met bijbehorende **artefacten**, governance en ondersteunende **agents**.

### Kenmerken ⭐
- Activeert agents
- Contextualiseert werk tot specifieke fasen
- Kan één of meerdere fasen ondersteunen
- Agents worden gefetched uit de Mandarin workspace

### Wat het niet is ❌
- Geen **value stream**
- Geen **mandarin-agent**
- Geen **artefact**

### Voorbeelden 💡
- **Workspace** voor alleen Veranderverkenning
- **Workspace** voor Werkvoorbereiding + Specificatie

### Synoniemen 🏷️
- Werkomgeving

### Analogieën 🔄
- Vergelijkbaar met een project workspace, repository of solution folder

### Toelichting (optioneel) 💬
In de eerste fase van ontwikkeling worden agents gefetched uit de Mandarin workspace. De workspaces bevatten dus wel agents, maar deze worden hier niet aangepast. In die zin 'bevatten' deze workspaces geen agents.

---
## Relatie value stream ↔ agent-soort

| Agent-soort   | Relatie tot value stream                                 |
|---------------|---------------------------------------------------------|
| Adviserend    | Ondersteunt waardecreatie, maar levert geen artefact     |
| Uitvoerend    | Levert expliciete artefacten binnen een stap             |
| Beheeragent   | Ondersteunt randvoorwaarden, geen directe waarde         |

➡️ Alleen **uitvoerende agents** leveren directe waarde in een value stream.

---

## Agent-soort

### Definitie 📝
Een **agent-soort** is in het **Mandarin-ecosysteem** een classificatie van het effect van een **agent** op de project **workspace**. De volgende soorten worden onderkend:
-  **adviserende agent** (geen effect)
-- **uitvoerende agent** (**mandarin artefacten** of **goverance) of **beherend** (operationele staat).

### Kenmerken ⭐
- Bepaalt het type bijdrage van een agent aan de workspace
- Is leidend voor de rolverdeling en verantwoordelijkheden
- Maakt expliciet onderscheid tussen advies, uitvoering en beheer
- Is onafhankelijk van de technische implementatie
- Is een canoniek onderscheid binnen Mandarin

### Wat het niet is ❌
- Geen agent zelf
- Geen workspace
- Geen technische rol of functietitel

### Voorbeelden 💡
- Adviserende agent: levert alleen informatie, geen artefacten
- Uitvoerende agent: levert artefacten binnen een value stream
- Beheeragent: wijzigt operationele staat, geen business-artefacten

### Synoniemen 🏷️
Agent-type
Rolcategorie

### Analogieën 🔄
- Vergelijkbaar met rolclassificaties in enterprise architectuur (bijv. actor, performer, controller)
- In softwareontwikkeling: user role, service type

### Toelichting (optioneel) 💬
Het onderscheid tussen agent-soorten zorgt voor heldere verantwoordelijkheden en voorkomt verwarring tussen advies, uitvoering en beheer binnen het Mandarin-ecosysteem.

---
# Uitvoerende agent

## Definitie 📝
Een **uitvoerende agent** is een agent die zelfstandig en binnen een vastgestelde boundary concrete handelingen uitvoert en daarbij expliciete output produceert.
We onderkennen twee sub-soorten:
- **eco systeem uitvoerende agent**
- **Waarde uitvoerende agent**

## Kenmerken ⭐
- Voert taken uit volgens een vooraf gedefinieerd charter
- Produceert observeerbare en herhaalbare output
- Neemt geen beleidsmatige of normatieve beslissingen
- Werkt binnen duidelijke input- en outputafspraken

## Wat het niet is ❌
- Geen adviserende rol of beoordelaar
- Geen eigenaar van beleid of governance
- Geen agent die eigen doelen formuleert of wijzigt

## Voorbeelden 💡
- Een agent die een document genereert op basis van vastgestelde input
- Een agent die structuur aanbrengt in aangeleverde gegevens

## Synoniemen 🏷️ (optioneel)
- Actie-agent
- Uitvoeragent

## Analogieën 🔄 (optioneel)
- Een medewerker die een taak uitvoert volgens een werkinstructie
- Een machine die een vooraf ingestelde handeling herhaalt

## Context en gebruik 💬 (optioneel)
Uitvoerende agents vormen de operationele laag van een agent-ecosysteem. Zij maken automatisering tastbaar, maar ontlenen hun legitimiteit volledig aan het charter en de governance waarbinnen zij opereren.

---
## Ecosysteem uitvoerende agent

### Definitie 📝
Een **ecosysteem uitvoerende agent** is een agent die artefacten of wijzigingen levert die het functioneren, de governance of de structuur van het Mandarin-ecosysteem zelf beïnvloeden, zonder directe waarde te leveren in een value stream fase.

### Kenmerken ⭐
- Levert governance-artefacten, policies, templates of systeemwijzigingen
- Wijzigt de randvoorwaarden of structuur van het ecosysteem
- Heeft geen directe business-waarde in een value stream
- Is essentieel voor het functioneren en de samenhang van het ecosysteem

### Wat het niet is ❌
- Geen uitvoerende agent binnen een value stream
- Geen adviserende agent
- Geen agent die business-artefacten levert

### Voorbeelden 💡
- Agent die een nieuw governance-artefact publiceert
- Agent die policies of templates aanpast
- Agent die systeeminstellingen wijzigt

### Synoniemen 🏷️
Governance-agent
Systeem-agent

### Analogieën 🔄
- Vergelijkbaar met een infrastructuurbeheerder in DevOps
- In enterprise architectuur: policy manager, platformbeheerder

### Toelichting (optioneel) 💬
De ecosysteem uitvoerende agent zorgt voor de randvoorwaarden en structuur waarbinnen alle andere agents en value streams kunnen functioneren.

---

## Waarde uitvoerende agent

### Definitie 📝
Een **waarde uitvoerende agent** is een agent die expliciete business-artefacten levert als resultaat van een value stream fase, en daarmee directe waarde toevoegt aan het Mandarin-ecosysteem.

### Kenmerken ⭐
- Levert business-artefacten (documenten, modellen, code, configuratie)
- Werkt binnen een value stream fase
- Output is persistent en overdraagbaar
- Output is input voor volgende fasen of agents
- Moet voldoen aan vooraf gedefinieerde templates en kwaliteitscriteria

### Wat het niet is ❌
- Geen ecosysteem uitvoerende agent
- Geen adviserende agent
- Geen agent die alleen informatie levert

### Voorbeelden 💡
- Agent die een ontwerpdocument oplevert
- Agent die code of configuratie toevoegt aan de workspace
- Agent die een model of specificatie publiceert

### Synoniemen 🏷️
Business-agent
Producerende agent

### Analogieën 🔄
- Vergelijkbaar met een resource-creating service in SOA
- In softwareontwikkeling: developer, modelleur, documentgenerator

### Toelichting (optioneel) 💬
De waarde uitvoerende agent levert tastbare resultaten en directe waarde binnen het Mandarin-ecosysteem, als onderdeel van een value stream.
