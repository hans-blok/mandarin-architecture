# De Mandaryn concepten

**Type**: Concepten en Definities 
**Repository**: mandaryn-canon 
**Identifier**: mandaryn-canon.concepten.actieve-structuren 
**Version**: 2.3.0 
**Status**: Active 
**Last Updated**: 2026-02-01 
**Owner**: Hans Blok

---

## Herkomstverantwoording

Dit document is opgesteld door Hans Blok op 31 januari 2026 als definitie van concepten en architectonische grondslagen voor actieve structuren in het Mandaryn-ecosysteem.

**Geraadpleegde bronnen**:


**Opsteller**: Hans Blok 
**Datum**: 2026-01-31 
**Laatste wijziging**: 2026-02-01 (Constitutioneel Auteur) 
**Doel**: Expliciete definitie van operationele concepten (actieve structuren) binnen het Mandaryn-ecosysteem

**Ontwerpkeuze**: De bewuste scheiding tussen operationele concepten (actieve structuren en hun werking) en meta-concepten (classificatie en artefactstructuur) maakt **mandaryn-agents** voorspelbaarder, toetsbaarder en consistenter. Meta-concepten zijn verplaatst naar mandaryn-meta-concepten.md. Concepten over gedrag, werking en sturing worden vastgelegd in een afzonderlijk document.

**Normatief fundament**: Dit document vormt onderdeel van de grondslagen binnen mandaryn-canon en volgt de documentatie-standaarden conform workspace-doctrine en doctrine-agent-charter-normering.

---

## Inhoudsopgave

### Fundamentele Concepten
- [Mandaryn-concept](#mandaryn-concept) â€” Expliciet gedefinieerd, herbruikbaar bouwblok
- [Actieve structuur](#actieve-structuur) â€” Functioneel element dat handelt en output produceert
- [Mandaryn-ecosysteem](#mandaryn-ecosysteem) â€” Overkoepelende context van alle concepten

### Capabilities
- [Mandaryn-capability](#mandaryn-capability) â€” Duurzaam, herbruikbaar vermogen

### mandaryn-agent-gerelateerde Concepten
- [Mandaryn-agent](#mandaryn-agent) â€” Gecharterd element dat taken uitvoert
- [agent-boundary](#agent-boundary) â€” Expliciete servicegrens van een **mandaryn-agent**
- [agent-charter](#agent-charter) â€” Missie, verantwoordelijkheid en governance van een **mandaryn-agent**
- [agent-capability](#agent-capability) â€” Aanroepbare functie van een **mandaryn-agent**
- [agent-contract](#agent-contract) â€” Specificatie van intentie, input, output en beleid
 - [Prompt](#prompt) â€” Concreet aanroep- of instructiepatroon richting een **mandaryn-agent**

### Artefacten en Value Streams
- [Mandaryn-artefact](#mandaryn-artefact) â€” Duurzame, overdraagbare vastlegging van resultaat
- [Template](#template) â€” Herbruikbare structuur voor artefacten en prompts
- [Value stream](#value-stream) â€” Waarde-creÃ«rende keten van stappen
- [Value stream fase](#value-stream-fase) â€” Waardemoment binnen een value stream
- [Workspace](#workspace) â€” Afgebakende werkomgeving voor value stream fasen

---

## Inleiding

Dit document beschrijft de concepten die betrekking hebben op de **actieve structuren** van het **Mandaryn-ecosysteem**. 
Onder actieve structuren verstaan we de samenstellende en functionele elementen die het ecosysteem laten handelen, samenwerken en output produceren.

Naast de actieve structuren bevat dit document ook de meta-concepten **Mandaryn-concept** en **Mandaryn-architectuurprincipe**. Deze hebben een beschrijvend en duidend karakter en ondersteunen menselijke leesbaarheid en begripsvorming van het ecosysteem zelf.

De expliciete afbakening en structurering van deze concepten is een **bewuste ontwerpkeuze**. Door structurele en gedragsmatige aspecten strikt te scheiden, worden **mandaryn-agents** voorspelbaarder in hun handelen, beter toetsbaar en consistenter in hun output. Dit vergroot de bestuurbaarheid van het ecosysteem en zorgt ervoor dat **mandaryn-agents** aantoonbaar handelen binnen de bedoelde kaders.

Concepten die betrekking hebben op **gedrag, werking en sturing** van het ecosysteem â€” zoals governance, inferentie, intentie en logging â€” worden daarom vastgelegd in een afzonderlijk document. Deze scheiding voorkomt vermenging van verantwoordelijkheden en draagt bij aan meer grip op wat **mandaryn-agents** doen, waarom zij dat doen en wanneer zij moeten escaleren.

### Gebruik van Synoniemen

Bij elk concept worden **synoniemen** vermeld onder de sectie ðŸ·ï¸. Deze synoniemen zijn **uitsluitend bedoeld voor menselijke spreektaal** en **NIET toegestaan binnen het Mandaryn-ecosysteem**.

**Strikte regel**: Binnen het ecosysteem (in governance-artefacten, **agent-charter**s, doctrines, **agent-contract**s, **mandaryn-agent**-communicatie) wordt **altijd de volledige, officiÃ«le conceptnaam gebruikt**. Synoniemen zijn verboden in formele context.

**Rationale**: Door consequent de officiÃ«le conceptnamen te gebruiken, wordt spraakverwarring voorkomen en weten **mandaryn-agents** precies wat wordt bedoeld. Synoniemen zijn uitsluitend hulpmiddel voor mensen om het ecosysteem te begrijpen in informele gesprekken.

**Voorbeelden van VERPLICHT gebruik**:
- âœ… **Agent-contract** (NIET: "contract")
- âœ… **Mandaryn-artefact** (NIET: "artefact")
- âœ… **Agent-soort** (NIET: "agent-type" of "agent-classificatie")
- âœ… **Mandaryn-capability** (NIET: "capability")
- âœ… **Agent-charter** (NIET: "charter")
- âœ… **Governance-artefact** (NIET: "governance-document" of "systeemartefact")
- âœ… **Waarde-artefact** (NIET: "resultaat-artefact" of "value artefact")

**Toegestaan**: In informele menselijke communicatie (gesprekken, notities, brainstorms) mogen synoniemen gebruikt worden voor leesbaarheid. Zodra het ecosysteem wordt geadresseerd (documenten, **mandaryn-agent**-interacties), gelden de officiÃ«le termen.

--- 
## Mandaryn-concept

### Definitie ðŸ“
Een **Mandaryn-concept** is een expliciet gedefinieerd, samenhangend en herbruikbaar bouwblok binnen het **Mandaryn-ecosysteem**, dat een fundamenteel begrip, structuur of mechanisme beschrijft en als referentie dient voor ontwerp, implementatie en governance.

- Is onderdeel van het canon van Mandaryn

- Geen tijdelijke afspraak of conventie

- **mandaryn-agent**, **agent-contract**, artefact, value stream, workspace
- Governance-artefact, capability, **agent-boundary**
Kernbegrip, Bouwsteen

- In Archimate een Concept 

### Toelichting ðŸ’¬
**Mandaryn-concepten** vormen het fundament voor alle verdere uitwerking, structurering en automatisering binnen het **Mandaryn-ecosysteem.**

---

## Actieve structuur

### Definitie ðŸ“
Een **actieve structuur** in het **Mandaryn-ecosysteem** is een expliciet gedefinieerd, functioneel element dat zelfstandig of in samenwerking met andere structuren taken uitvoert, interactie aangaat en output produceert, en daarmee het dynamisch functioneren van het ecosysteem mogelijk maakt.

### Kenmerken â­
- Heeft een expliciete, afgebakende rol of functie binnen het ecosysteem
- Is in staat tot handelen, samenwerken en output genereren
- Is structureel en functioneel onderscheiden van passieve of beschrijvende elementen
- Kan zelfstandig of in samenhang met andere actieve structuren opereren
- Is toetsbaar op gedrag en output

### Wat het niet is âŒ
- Geen passief, beschrijvend of uitsluitend informatief element
- Geen tijdelijke of impliciete structuur
- Geen abstracte regel, principe of conventie
- Geen gedrag

### Voorbeelden ðŸ’¡
- Mandaryn-agent
- Workspace
- Value stream

### Synoniemen ðŸ·ï¸
Functioneel element, Dynamische component

### AnalogieÃ«n ðŸ”„
- Vergelijkbaar met actieve structuren in ArchiMate (bijv. component, actor, device)
- In softwareontwikkeling: service, proces, actor

### Toelichting ðŸ’¬
Actieve structuren vormen het handelende en uitvoerende deel van het **Mandaryn-ecosysteem**. Zij maken samenwerking, automatisering en waardecreatie mogelijk door expliciet gedrag en output te leveren binnen de afgesproken kaders.

---

## Mandaryn-ecosysteem

### Definitie ðŸ“
Het **Mandaryn-ecosysteem** is de overkoepelende, samenhangende verzameling van alle **Mandaryn-concepten**, **actieve structuren**, **artefacten**, governance-mechanismen en hun onderlinge relaties, die samen een expliciet, adaptief en bestuurbaar geheel vormen voor het realiseren van waarde binnen gedefinieerde **value streams**.

### Kenmerken â­
- Omvat alle Mandaryn-concepten en hun relaties
- Is uitbreidbaar en aanpasbaar zonder verlies van samenhang
- Waarborgt expliciete contracten en governance
- Biedt een coherent kader voor **mandaryn-agents**, artefacten en value streams
- Maakt automatisering, samenwerking en waardecreatie mogelijk
- Is adaptief en zelfbeschrijvend (meta-concepten zijn onderdeel van het ecosysteem)

### Wat het niet is âŒ
- Geen statisch systeem of vaste architectuur
- Geen enkelvoudige applicatie of tool
- Geen organisatie of bedrijfseenheid
- Geen tijdelijke samenwerkingsvorm

### Voorbeelden ðŸ’¡
- De combinatie van alle **mandaryn-agents**, **Agent-charter**s, doctrines, workspaces en value streams die samen het Mandaryn-systeem vormen
- Het geheel van governance-artefacten en waarde-artefacten in samenhang

### Synoniemen ðŸ·ï¸
- Mandaryn-systeem, Mandaryn-omgeving

### AnalogieÃ«n ðŸ”„
- Vergelijkbaar met een platform-ecosysteem in software (zoals een cloud platform met services, API's en governance)
- In enterprise architectuur: een capability-gebaseerd operating model
- In biologie: een ecosysteem met verschillende soorten en hun interacties

### Toelichting ðŸ’¬
Het **Mandaryn-ecosysteem** vormt de overkoepelende context waarbinnen alle Mandaryn-concepten samenkomen en waarde leveren. Het is ontworpen om adaptief, expliciet en samenhangend te zijn. Het ecosysteem is zelfbeschrijvend: de concepten die het ecosysteem beschrijven (zoals **Mandaryn-concept** en **Mandaryn-architectuurprincipe**) maken zelf deel uit van het ecosysteem.

---
## Mandaryn-capability

### Definitie ðŸ“
Een **Mandaryn-capability** is een duurzaam, herbruikbaar vermogen van het **Mandaryn-ecosysteem** om een bepaald type waarde te realiseren, onafhankelijk van specifieke **agents**, tooling of uitvoering, en inzetbaar binnen Ã©Ã©n of meer **value stream fasen**.

### Kenmerken â­
- Beschrijft wat het ecosysteem kan
- Is stabiel in de tijd
- Is niet aan Ã©Ã©n **mandaryn-agent** gekoppeld
- Kan door meerdere **mandaryn-agents** gerealiseerd worden
- Wordt ingezet door value stream fasen, maar hoort daar niet bij
- Bestaat ook als er (tijdelijk) geen **mandaryn-agent** actief is

### Voorbeelden ðŸ’¡
- Veranderhypotheses formuleren

- **Artefact**

### AnalogieÃ«n ðŸ”„
- Vergelijkbaar met een capability in enterprise architectuur
- In softwareontwikkeling: een herbruikbare service of functie

### Toelichting ðŸ’¬
Een Mandaryn capability is uniek in de wereld.
---

## Mandaryn-agent

### Definitie ðŸ“
Een **mandaryn-agent** is een expliciet gedefinieerde, autonome software-entiteit binnen het **Mandaryn-ecosysteem** die, op basis van een formeel **agent-charter** en **agent-contract**, specifieke taken uitvoert, Mandaryn-artefacten produceert of informatie levert, en daarbij altijd opereert binnen een afgebakende **agent-boundary** en volgens de geldende governance.

### Kenmerken â­
- Heeft een expliciet **agent-charter** en **agent-contract**
- Is autonoom en verantwoordelijk voor eigen uitvoering binnen boundary
- Voert Ã©Ã©n of meer **mandaryn-agent**-capabilities uit
- Produceert Mandaryn-artefacten of levert informatie
- Is herbruikbaar en vervangbaar binnen het ecosysteem
- Werkt altijd volgens expliciete input/output-afspraken

### Wat het niet is âŒ
- Geen impliciete of ad-hoc softwarecomponent
- Geen menselijke actor
- Geen **mandaryn-agent** zonder expliciet **agent-contract** of **agent-charter**
- Geen monolithische applicatie

### Voorbeelden ðŸ’¡
- Mandaryn architect, Logisch datamodelleur, Technisch datamodelleur, **mandaryn-agent** smeder

### Synoniemen ðŸ·ï¸
- **mandaryn-agent**, Software-agent

### AnalogieÃ«n ðŸ”„
- Vergelijkbaar met een microservice, bot of autonome service in softwareontwikkeling
- In enterprise architectuur: een performer of actor met expliciete verantwoordelijkheden

### Toelichting ðŸ’¬
Een **mandaryn-agent** is altijd expliciet ontworpen, beschreven en begrensd. De **mandaryn-agent** ontleent zijn legitimiteit aan het **agent-charter** en het **agent-contract**, en is alleen via formele interfaces aanspreekbaar. Dit waarborgt consistentie, vervangbaarheid en governance binnen het **Mandaryn-ecosysteem**.

---
## agent-boundary

### Definitie ðŸ“
Een **agent-boundary** is de expliciet vastgelegde servicegrens waarbinnen een **mandaryn-agent** zijn interne werking, governance en **agent-capabilities** organiseert, en waarbuiten interactie uitsluitend plaatsvindt via formele **agent-contracts**.

### Kenmerken â­
- Bepaalt wat tot de **mandaryn-agent** behoort en wat daarbuiten ligt
- Scheidt interne werking van externe interactie
- Is leidend voor governance en autonomie van de **mandaryn-agent**
- Waarborgt dat alleen via contracten interactie mogelijk is
- Is de eerste en verplichte stap in mandaryn-agent-ontwerp

### Wat het niet is âŒ
- Geen impliciete grens
- Geen technische implementatiegrens
- Geen optionele ontwerpkeuze

### Voorbeelden ðŸ’¡
- {bedenk betere voorbeelden} 

### Synoniemen ðŸ·ï¸
- Agent-grens
- Service boundary

### AnalogieÃ«n ðŸ”„
- Vergelijkbaar met een bounded context in DDD, een microservice boundary, of een package boundary in OOP
- In SOA: service boundary waarbinnen interne details verborgen blijven
- Workspace als project workspace, repository, of solution folder
- In DevOps: deployment workspace of CI/CD pipeline context

### Toelichting ðŸ’¬
Het expliciet definiÃ«ren van de **agent-boundary** voorkomt dat **mandaryn-agents** samenvallen met tooling of prompts, verantwoordelijkheden vervagen of contracten impliciet worden. Alles binnen de boundary valt onder het **agent-charter**, de bijbehorende **agent-contracten** en de interne governance van de **mandaryn-agent**. Alles buiten de boundary is alleen toegankelijk via formele, expliciete contracten.
---

## agent-charter

### Definitie ðŸ“
Een **agent-charter** is een formeel, expliciet document dat de missie, verantwoordelijkheden, grenzen en governance van een specifieke **mandaryn-agent** vastlegt, en daarmee de legitimiteit, autonomie en het bestaansrecht van de **mandaryn-agent** binnen het **Mandaryn-ecosysteem** waarborgt.

### Kenmerken â­
- Legt de missie en het bestaansrecht van de **mandaryn-agent** vast
- Bepaalt de grenzen (boundary) en verantwoordelijkheden
- Beschrijft de governance, policies en randvoorwaarden
- Is expliciet, versieerbaar en bindend
- Is leidend voor ontwerp, implementatie en evaluatie van de **mandaryn-agent**
- Vormt de basis voor het **agent-contract**

### Wat het niet is âŒ
- Geen impliciete afspraak of mondelinge instructie
- Geen technische specificatie of implementatiedocument
- Geen **agent-contract** (maar vormt wel de basis daarvoor)
- Geen tijdelijke of informele notitie

### Voorbeelden ðŸ’¡
- **Agent-charter** van een publicatie-agent waarin missie, scope en governance zijn vastgelegd
- **Agent-charter** van een beheeragent met expliciete operationele grenzen

### Synoniemen ðŸ·ï¸
- Mandaat, rolbeschrijving

### AnalogieÃ«n ðŸ”„
- Vergelijkbaar met een projectcharter, mandaat of mission statement in projectmanagement
- In enterprise architectuur: purpose statement of governance **Agent-charter**

### Toelichting ðŸ’¬
Het **agent-charter** is het fundament voor de legitimiteit en autonomie van een **mandaryn-agent**. Zonder **Agent-charter** bestaat een **mandaryn-agent** niet formeel binnen het **Mandaryn-ecosysteem**. Het **agent-charter** is leidend voor alle ontwerp- en governancekeuzes rondom de **mandaryn-agent**.

---
## agent-capability

### Definitie ðŸ“
Een **agent-capability** is een expliciet aanroepbare functie van een **mandaryn-agent**, vastgelegd in een **agent-contract**.

### Kenmerken â­
- EÃ©n capability = Ã©Ã©n intent / operation
- Capability bestaat alleen in het **agent-contract**
- Capability is aanroepbaar (uitvoerbaar), niet beschrijvend

### Wat het niet is âŒ
- Geen beschrijvende eigenschap
- Geen interne implementatie
- Geen losstaande functie buiten contract

### Voorbeelden ðŸ’¡
- workflow-architect.1-ontwerp.workflow
- vertaler.vertaal

### Synoniemen ðŸ·ï¸
- Intent, Intentie

### AnalogieÃ«n ðŸ”„
- Vergelijkbaar met een operation in een API
- In softwareontwikkeling: een expliciete functie of methode

### Toelichting ðŸ’¬
Soms wordt dit de prompt genoemd. In Mandaryn noemen we dit niet de prompt!

---

## agent-contract

### Definitie ðŸ“
Een **agent-contract** definieert formeel de intent (**agent-capability**) van de **mandaryn-agent**, de input die het verwacht en de output (**artefact**) die hij creÃ«ert of antwoorden die hij geeft, evenals de beleidsregels en beperkingen waaronder die mogelijkheden toegankelijk zijn.
 
 ### Wat het niet is âŒ
 - Geen beschrijving van interne werking
 - Geen implementatiedetails
 - Geen impliciet **agent-contract**

### Voorbeelden ðŸ’¡
 - Zie mandaryn-architect.schrijf-concept.agent.md
 - Zie workflow-architect.1-ontwerp-workflow.agent.md

### Synoniemen ðŸ·ï¸
 Service contract, Interface contract

### AnalogieÃ«n ðŸ”„
 - Vergelijkbaar met een API-agent-contract in softwareontwikkeling
 - In SOA: WSDL of service agreement

### Toelichting ðŸ’¬
Totdat **agent-charter** en **agent-contract** bestaan, is dit gÃ©Ã©n **mandaryn-agent**, maar een agent-capability-voornemen.

---

## Prompt

### Definitie ðŸ“
Een **prompt** is een concrete, tekstuele of gestructureerde uitdrukking van een aanroep of instructie aan een **mandaryn-agent**, die in natuurlijke taal of een andere representatievorm is geformuleerd, maar zelf **geen** canoniek onderdeel vormt van het **agent-contract**.

### Kenmerken â­
- Is gericht aan Ã©Ã©n specifieke **mandaryn-agent** (of een groep) in een gegeven context
- Bestaat uit tekst, voorbeelden, constraints en eventueel contextfragmenten
- Is een **representatie** van een beoogde aanroep, geen formele capability-definitie
- Is tijdelijk en situationeel: kan per gebruik of sessie verschillen
- Is tooling- en implementatiegebonden (UI, CLI, editor, API)

### Wat het niet is âŒ
- Geen **agent-capability** (die wordt formeel gedefinieerd in het **agent-contract**)
- Geen **agent-contract** of formele interfacebeschrijving
- Geen **agent-charter** of bron van legitimiteit
- Geen normerend artefact of canoniek vastgelegde definitie

### Voorbeelden ðŸ’¡
- Een tekstblok in een editor waarin een gebruiker een opdracht voor een specifieke **mandaryn-agent** formuleert
- Een HTTP-body of CLI-parameter die een aanroep naar een **mandaryn-agent** beschrijft
- Een tijdelijke instructie in een REPL of chat-venster gericht aan een **mandaryn-agent**

### Synoniemen ðŸ·ï¸
- Aanroeptekst (alleen in spreektaal)
- Instructieprompt

### AnalogieÃ«n ðŸ”„
- In LLM-systemen: de prompt waarmee een model wordt aangestuurd
- In klassieke software: de combinatie van command-line parameters en input die een proces start

### Toelichting ðŸ’¬
Binnen Mandaryn is **prompt** nadrukkelijk gÃ©Ã©n canoniek alternatief voor **agent-capability** of **agent-contract**. Een prompt is een *concrete uitdrukking* van een aanroep naar een bestaande capability, maar de formele waarheid ligt altijd in het **agent-contract**. Prompt-vormen kunnen veranderen met tooling of interface, terwijl capabilities en contracten stabiel en toetsbaar blijven.

Bestanden in de `.github`-map met namen van de vorm `{agent-naam}.prompt` worden uitsluitend gebruikt om VS Code Copilot te voeden; ondanks deze naamgeving worden zij in de Mandaryn-concepten niet als **prompt** beschouwd, maar als tooling-specifieke representaties van concrete aanroepen.

---
## Mandaryn-artefact

### Definitie ðŸ“
Een **Mandaryn-artefact** is een duurzame, expliciete en overdraagbare vastlegging van resultaat of besluitvorming, die binnen een **value stream fase** waarde representeert en als input kan dienen voor vervolgwerk.

### Kenmerken â­
- Duurzaam (blijft bestaan)
- Expliciet (leesbaar, inspecteerbaar)
- Overdraagbaar (kan door anderen of **mandaryn-agents** gebruikt worden)
- Waarde-dragend (vertegenwoordigt gerealiseerde waarde)

### Wat het niet is âŒ
- Geen tijdelijke notitie
- Geen impliciete kennis
- Geen niet-overdraagbaar resultaat

### Voorbeelden ðŸ’¡
- Governance-artefacten (bijv. constitutie, doctrines, agent-charters)
- Richtinggevende artefacten (bijv. requirements, oplossingsontwerpen)
- Realiserende artefacten (bijv. code, DDL, infrastructuur-als-code)
- Beschrijvende en documenterende artefacten (bijv. handleidingen, modellen)

### Synoniemen ðŸ·ï¸
- **Artefact**

### AnalogieÃ«n ðŸ”„
- Vergelijkbaar met een **artefact** in softwareontwikkeling (build-artifact, document)
- In projectmanagement: **deliverable**
- In DDD: **Aggregate Result** of **Documented Outcome**

### Toelichting ðŸ’¬
De **Mandaryn-artefacten** worden geordend in hoofdklassen. Deze zijn vastegelegd in mandaryn-ordeningsconcepten.md.
Deze indeling scheidt **betekenis van vorm**, maakt tooling verwisselbaar, houdt governance scherp en klein, en erkent modellen als uitleg (niet als waarheid).

---

## Template

### Definitie ðŸ“
Een **template** is een herbruikbare, gestructureerde opzet voor een **Mandaryn-artefact** of prompt, die de minimale inhoud, secties en structuur voorschrijft, zodat **value-stream-specifieke** (inzet-as) **mandaryn-agents** binnen een value stream fase consistente en toetsbare output leveren.

### Kenmerken â­
- Legt structuur en verplichte onderdelen van een artefact of prompt vast
- Wordt gebruikt als startpunt voor concrete artefacten binnen een **value stream fase**
- Ondersteunt vooral **mandaryn-agents** die op de **inzet-as** als *value-stream-specifiek* zijn gepositioneerd
- Verhoogt voorspelbaarheid, vergelijkbaarheid en herbruikbaarheid van resultaten
- Is zelf geen normerend artefact, maar kan verwijzen naar normerende artefacten
- Wordt beheerd in de `templates/`-folder van een workspace

### Wat het niet is âŒ
- Geen vervanging van het onderliggende **Mandaryn-artefact** of **agent-contract**
- Geen volledige beschrijving van gedrag of governance
- Geen tijdelijke notitie of ad-hoc sjabloon
- Geen tooling-specifieke prompt op zichzelf

### Voorbeelden ðŸ’¡
- `templates/agent.charter.template.md` â€” opzet voor een **agent-charter**
- `templates/phase.charter.template.md` â€” opzet voor een fase-charter binnen een **value stream fase**
- Prompt-templates die vaste secties bieden voor context, opdracht en constraints richting een **mandaryn-agent**

### Synoniemen ðŸ·ï¸
- Sjabloon (alleen in spreektaal)

### AnalogieÃ«n ðŸ”„
- Vergelijkbaar met document- of code-templates in ontwikkelomgevingen
- In enterprise architectuur: standaardformats voor architectuurdocumenten en besluiten

### Toelichting ðŸ’¬
**Templates** verbinden de ordeningslaag (structuur en classificatie) met de operationele laag waarin **mandaryn-agents** daadwerkelijk artefacten produceren. Door templates expliciet te definiÃ«ren en centraal op te slaan, kunnen vooral **value-stream-specifieke** **mandaryn-agents** binnen een bepaalde **value stream fase** snel, consistent en toetsbaar werken, zonder dat de normatieve waarheid verschuift van normerende artefacten naar de template zelf.

---

## Value stream

### Definitie ðŸ“
Een **value stream** is een expliciet gedefinieerde keten van waarde-creÃ«rende stappen die samen leiden tot een herkenbaar resultaat, en die richting geeft aan welke **artefacten**, **mandaryn-agents** en beslissingen bijdragen aan die waarde.

### Kenmerken â­
- Definieert stappen, geen taken
- Is artefact-gericht
- Is **mandaryn-agent**-agnostisch, maar **mandaryn-agent**-sturend
- Meerdere value streams per ecosysteem mogelijk

### Wat het niet is âŒ
- Geen workflow of proces
- Geen lijst van taken
- Geen beschrijving van implementatie

### Voorbeelden ðŸ’¡
- IT-development value stream
- Kennispublicatie value stream
- Werkvoorbereiding value stream

### Synoniemen ðŸ·ï¸
- Waardestroom

### AnalogieÃ«n ðŸ”„
- Vergelijkbaar met een waardeketen in Lean of een pipeline in DevOps

### Toelichting ðŸ’¬
Value streams structureren het werk en maken waardecreatie inzichtelijk via expliciete stappen en artefacten.

---

## Value stream fase

### Definitie ðŸ“
Een **value stream fase** is een logisch afgebakende, waarde-creÃ«rende eenheid binnen een **value stream**, waarin een specifiek type waarde tot stand komt, herkenbaar via expliciete **artefacten** en kwaliteitscriteria, onafhankelijk van de wijze van uitvoering.

### Kenmerken â­
- Is een waardemoment, geen handeling
- Beschrijft wat voor waarde ontstaat, niet hoe
- Heeft een helder doel binnen de value stream
- Wordt zichtbaar via expliciete artefacttypen en bijbehorende kwaliteitsverwachtingen
- Vormt context voor **mandaryn-agents** die daarin opereren
- Produceert geen taken en stuurt geen workflow

### Wat het niet is âŒ
- Geen proces
- Geen stappenplan
- Geen activiteit of taak
- Geen **mandaryn-agent** of rol
- Geen implementatiefase

### Voorbeelden ðŸ’¡
- Analyse-fase
- Ontwerpfase
- Realisatie-fase

### Synoniemen ðŸ·ï¸
- Waardemoment
- Fase

### AnalogieÃ«n ðŸ”„
- Vergelijkbaar met een stage in een pipeline
- In Lean: een waardemoment in de waardestroom

### Toelichting ðŸ’¬
**Value stream fasen** structureren het werk en maken expliciet welke waarde in elke stap ontstaat. **Artefacten** zijn herleidbaar van **mandaryn-agent** â†’ **value stream fase** â†’ **value stream**.

---
## Workspace

### Definitie ðŸ“
Een **workspace** is een afgebakende werkomgeving die wordt ingericht om Ã©Ã©n of meer **value stream fasen** uit te werken, met bijbehorende **artefacten**, governance en ondersteunende **agents**.

### Kenmerken â­
- Activeert **mandaryn-agents**
- Contextualiseert werk tot specifieke fasen
- Kan Ã©Ã©n of meerdere fasen ondersteunen
- **mandaryn-agents** worden gefetched uit de Mandaryn workspace

### Wat het niet is âŒ
- Geen **value stream**
- Geen **mandaryn-agent**
- Geen **artefact**

### Voorbeelden ðŸ’¡
- **Workspace** voor alleen Veranderverkenning
- **Workspace** voor Werkvoorbereiding + Specificatie

### Synoniemen ðŸ·ï¸
- Werkomgeving

### AnalogieÃ«n ðŸ”„
- Vergelijkbaar met een project workspace, repository of solution folder

### Toelichting ðŸ’¬
In de eerste fase van ontwikkeling worden **mandaryn-agents** gefetched uit de Mandaryn workspace. De workspaces bevatten dus wel **mandaryn-agents**, maar deze worden hier niet aangepast. In die zin 'bevatten' deze workspaces geen **mandaryn-agents**.

---


## Change Log

| Datum   | Versie | Wijziging                              | Auteur   |
|------------|--------|---------------------------------------------------------------------|------------|
| 2026-02-01 | 2.3.0 | Toegevoegd: domeinconcept Template als herbruikbare structuur voor artefacten en prompts, met nadruk op gebruik door value-stream-specifieke mandaryn-agents | Constitutioneel Auteur |
| 2026-02-01 | 2.2.0 | Verduidelijking: `.github/{agent-naam}.prompt`-bestanden zijn tooling-specifieke representaties voor VS Code Copilot en geen canonieke prompts binnen Mandaryn | Constitutioneel Auteur |
| 2026-02-01 | 2.1.0 | Toegevoegd: concept Prompt als concrete, niet-canonieke representatie van een aanroep naar een mandaryn-agent | Constitutioneel Auteur |
| 2026-02-01 | 2.0.0 | Scheiding meta-concepten: Mandaryn-architectuurprincipe, **agent-boundary**, **mandaryn-agent**classificatie (inclusief As en 4 assen), en Mandaryn-artefact (inclusief alle specialisaties) verplaatst naar mandaryn-meta-concepten.md; document bevat nu alleen operationele concepten (actieve structuren) | Constitutioneel Auteur |
| 2026-02-01 | 1.6.0 | Herijking **mandaryn-agent**-classificatie: vervanging **mandaryn-agent**-soort door **mandaryn-agent**classificatie met 4 orthogonale assen (Inhoudelijke as, Inzet-as, Vorm-as, Werkingsas); alle oude **mandaryn-agent**-soorten verwijderd (Adviserende **mandaryn-agent**, Uitvoerende **mandaryn-agent**, Beheeragent, Ecosysteem uitvoerende **mandaryn-agent**, Waarde uitvoerende **mandaryn-agent**); **mandaryn-agents** niet langer als "soort" maar als posities op assen | Constitutioneel Auteur |
| 2026-02-01 | 1.5.0 | Herziening artefacten-hiÃ«rarchie: Governance-artefact en Bedrijfs-artefact zijn nu specialisaties van Normerend artefact; Governance-artefacten ontstaan alleen in value stream "Agent Ecosysteem Ontwikkeling"; Normerende artefacten operationeel in maximaal Ã©Ã©n value stream fase | Constitutioneel Auteur |
| 2026-02-01 | 1.4.0 | Herijking artefacten-indeling: Mandaryn-artefacten nu ingedeeld in 5 hoofdklassen (Normerend, Governance, Bedrijfs-, Beschrijvend, Documenterend) i.p.v. 2 (Governance, Waarde); scheidt betekenis van vorm, maakt tooling verwisselbaar | Constitutioneel Auteur |
| 2026-01-31 | 1.3.0 | Toevoeging concepten Value stream **mandaryn-agent** en value-stream-overstijgende **mandaryn-agent**; verduidelijking fase-toekenning per **mandaryn-agent**-soort: adviserende/uitvoerende **mandaryn-agents** aan fasen, beheeragents in alle fasen, value-stream-overstijgende **mandaryn-agents** orthogonaal | Constitutioneel Auteur |
| 2026-01-31 | 1.2.1 | Aanscherping "Gebruik van Synoniemen" â€” Synoniemen VERBODEN binnen ecosysteem, uitsluitend toegestaan in menselijke spreektaal; voorbeelden toegevoegd | Canon Curator |
| 2026-01-31 | 1.2.0 | Subsectie toegevoegd in Inleiding: "Gebruik van Synoniemen" â€” Verduidelijkt dat synoniemen spreektaal zijn en niet erkend binnen ecosysteem | Canon Curator |
| 2026-01-31 | 1.1.1 | Herstel Mandaryn-ecosysteem definitie â€” Ontbrekende definitie-sectie toegevoegd | Canon Curator |
| 2026-01-31 | 1.1.0 | Toevoeging definitie **mandaryn-agent**-soort â€” Expliciete classificatie toegevoegd | Canon Curator |
| 2026-01-31 | 1.0.0 | InitiÃ«le versie â€” Concepten en definities voor actieve structuren opgesteld | Hans Blok |

---

**Einde document**

