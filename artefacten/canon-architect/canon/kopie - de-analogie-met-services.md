
# Analogie met Services

---

## Mandarin agent - service drager

### Definitie
Een **Mandarin agent** is een autonome *service-drager* die één of meer expliciet gedefinieerde **agent-capabilities** levert via formele **agent-contracts**, en waarvan de interne werking en governance zijn vastgelegd in een charter.

#### Synoniemen
- Agent

#### Implicaties
Definitie ontleed (bewust exact):

1. **Autonome service-drager**
    - De agent draagt agent-capabilities
    - De agent kan bestaan zonder uitvoering (nog geen runner)
    - De agent kan meerdere agent-capabilities hebben, mits binnen dezelfde boundary


## Mandarin agent - resource

### Definitie
Een Mandarin agent is een **autonome servicedrager** die als resource wordt ingezet om één of meer capabilities van het **Mandarin-ecosysteem** te realiseren.


In ArchiMate geldt:

### Kenmerken

**Capability** (in deze context)
= wat een organisatie of ecosysteem kan (vermogen)

**Resource**
= iets dat wordt ingezet om capabilities te realiseren
(mens, systeem, applicatie, middel)

**Value stream**
= waar capabilities worden benut om waarde te creëren

In dat model:

- capabilities doen niets zelf
- resources voeren niets “op eigen houtje” uit
- resources worden ingezet om capabilities waar te maken

➡️ Dat is exact wat een agent in Mandarin doet.


---

## Autonome service-drager

### Definitie
Een **autonome service-drager** is een zelfstandig gedefinieerde eenheid die services (capabilities) aanbiedt en kan functioneren zonder kennis van zijn consumenten, implementatievorm of orkestratiecontext.

#### Implicaties
Bestaat uit drie afzonderlijke claims: service, drager en autonoom. Die moeten alle drie kloppen.

1. **Service (Erl-conform)**
    - Een agent is een service in de zin van Thomas Erl:
       - hij exposeert aanroepbare capabilities
       - die capabilities zijn uitsluitend beschreven via contracten
       - consumenten kennen de agent alleen via die contracten
    - ➡️ De agent is niet de capability, maar levert capabilities.
    - Dat maakt hem gelijkwaardig aan een service in SOA.

2. **Drager** (belangrijk verschil met “functie” of “prompt”)
    - “Drager” betekent hier:
       - De agent houdt meerdere dingen bijeen zonder ermee samen te vallen.
       - De agent draagt:
          - één of meer capabilities
          - bijbehorende agent-contracten
          - een charter (interne werking & governance)
          - eventueel templates en runners
    - Maar:
       - de agent is niet het contract
       - de agent is niet de prompt
       - de agent is niet de runner
    - ➡️ Zoals een service geen endpoint is, maar endpoints heeft.

---

## Agent-capability

### Definitie
Een **agent-capability** is een expliciet aanroepbare functie van een agent, vastgelegd in een agent-contract.

#### Synoniemen
- Intent
- Intentie
- Extern aanroepbare agent-functie

> Opmerking: soms wordt dit de prompt genoemd. In Mandarin noemen we dit **niet de prompt**!

#### Implicaties
- Eén capability = één intent / operation
- Capability bestaat alleen in het contract
- Capability is **aanroepbaar (uitvoerbaar)**, niet beschrijvend

> _Aanroepbaar_ betekent dat de capability daadwerkelijk kan worden uitgevoerd of opgeroepen; het is dus geen louter beschrijvende eigenschap, maar een concrete actie die door een agent geleverd kan worden.

Een agent-capability representeert een **specifieke functie** waarmee een agent kan worden aangeroepen. Als gevolg daarvan worden agent-capabilities vastgelegd in een agent-contract.

_Gebaseerd op SOA, Principles of Service Design, Thomas Erl, 2008 [p. 115]_

---

## Mandarin-capability

### Definitie
Een Mandarin capability is een **duurzaam, herbruikbaar vermogen** van het Mandarin-ecosysteem om een bepaald type waarde te realiseren, onafhankelijk van specifieke agents, tooling of uitvoering, en inzetbaar binnen één of meer value stream fasen.

### Kenmerken
Een Mandarin capability:
- beschrijft wat het ecosysteem kan
- is stabiel in de tijd
- is niet aan één agent gekoppeld
- kan door meerdere agents gerealiseerd worden
- wordt ingezet door value stream fasen, maar hoort daar niet bij
- bestaat ook als er (tijdelijk) geen agent actief is

### Voorbeelden (illustratief, niet normatief):
“Veranderhypotheses formuleren”
“Werk expliciet en ordenbaar maken”
“Architectuur visualiseren”
“Artefacten publiceren”

➡️ Dit zijn vermogens, geen handelingen.

---

## Agent-contract

### Definitie
Een agent-contract definieert formeel de intent (capability) van de agent, de input die het verwacht en de output (artefact) die hij creëert of antwoorden die hij geeft, evenals de beleidsregels en beperkingen waaronder die mogelijkheden toegankelijk zijn.

### Synoniemen
- 

### Kenmmerken
Vijf vaste assen:

1. **Agent-Contract beschrijft één agent-capability**
   - Een contract bestaat om capabilities te beschrijven
   - Elke capability is:
     - expliciet
     - afzonderlijk aanroepbaar
     - extern zichtbaar
   - Een capability bestaat niet onafhankelijk van het contract.
   - ➡️ Capability = wat het contract exposeert.

2. **Contract beschrijft inputs en outputs**
   - Welke data vereist is
   - Welke data wordt teruggegeven
   - In welk formaat / met welke structuur
   - ➡️ Dit is interface-definitie, niet implementatie.
   - Uitvoerende Agents produceren altijd een artefact

3. **Contract bevat constraints en policies**
   - Erl is hier expliciet over:
     - Een contract gaat niet alleen over functionaliteit, maar ook over:
       - gebruiksbeperkingen
       - validatieregels
       - kwaliteitsverwachtingen
       - foutcondities
       - soms zelfs security- of accessregels
   - ➡️ Governance zit in het contract, niet erbuiten.

4. **Contract is extern en bindend**
   - Service-consumenten mogen alleen vertrouwen op het contract
   - Interne veranderingen zijn toegestaan zolang het contract ongewijzigd blijft
   - Het contract is:
     - stabiel
     - zelfstandig
     - leidend
   - The contract represents the official service description.

5. **Contract beschrijft nooit de interne werking**
   - Dit is misschien de scherpste grens bij Erl:
     - Geen processtappen
     - Geen algoritmen
     - Geen technische keuzes
     - Geen implementatiedetails
   - ➡️ Hoe een service werkt is out of scope voor het contract.

> “Totdat charter en contract bestaan, is dit géén agent, maar een capability-voornemen.”

## Uitvoerende Agent

### Definitie
Een uitvoerende agent levert duurzame artefacten als expliciet onderdeel van een value stream en veroorzaakt daarmee structurele wijziging in de workspace.


### Adviserende Agent

### Definitie  
Een adviserende agent levert uitsluitend informatieve output (advies, analyse, overzicht) en veroorzaakt geen duurzame wijziging in het ecosysteem.

### Kenmerken
- ❌ maakt geen artefacten
- ❌ wijzigt geen bestanden
- ❌ veroorzaakt geen side-effects
- ✅ produceert tekstuele of visuele output
- ✅ output is ephemeral (verdwijnt na gebruik)

**Contractueel**
- Output is niet-normatief
- Geen templates vereist
- Output is niet bedoeld voor downstream automatisering

## SOA analogie**
- Function-style service
- Query / read-only

---

## Agent-soort

### Definitie
Een **agent-soort** is in Mandarin een classificatie van het *effect van een agent* op de project workspace: adviserend (geen effect), uitvoerend (artefacten) of beherend (operationele staat).

---

## Uitvoerende Agent

### Definitie  
Een uitvoerende agent levert duurzame artefacten als expliciet onderdeel van een value stream en veroorzaakt daarmee structurele wijziging in de workspace.

### Kenmerken
- ✅ maakt artefacten (documenten, modellen, DSL, code, configuratie)
- ❌ wijzigt geen governance of workspace-inrichting
- ✅ output is persistent
- ✅ output is downstream input voor andere agents of mensen

**Contractueel**
- Output MOET voldoen aan een vooraf gedefinieerd template
- Template is verplicht onderdeel van capability policy
- Contract faalt als template ontbreekt

## SOA analogie**
- Resource-creating service
- Command met persistent effect
- Write-side van een value stream

---

### Beheeragent

### Definitie  
Een beheeragent wijzigt de operationele staat van de workspace of runtime-omgeving, zonder business-artefacten te produceren.

### Kenmerken
- ✅ wijzigt bestanden zoals .gitignore, folders, config
- ✅ start/stop containers of tooling
- ❌ produceert geen business-artefacten
- ❌ levert geen inhoudelijke waarde aan de value stream


## SOA analogie**
- Administrative / management API
- Infrastructure service
- Control-plane gedrag


## Value stream

### Definitie
Een value stream is een expliciet gedefinieerde keten van **waardecreërende stappen** die samen leiden tot een herkenbaar resultaat, en die richting geeft aan welke artefacten, agents en beslissingen bijdragen aan die waarde.

### Kenmerken
Essentiële eigenschappen in Mandarin
4.1 Value stream definieert stappen, geen taken

Een value stream beschrijft:
- fasen / stappen (bijv. analyse → specificatie → ontwerp)
- doel per stap
- welk type waarde daar ontstaat

Niet:

- concrete handelingen
- tooling
- workflow-details

➡️ Taken horen bij processen, niet bij value streams.

4.2 Value stream is artefact-gericht

In Mandarin is elke stap in een value stream gekoppeld aan:

- expliciete artefacten
- met een kwaliteitsverwachting
- die input zijn voor de volgende stap

Bijvoorbeeld:

- kennispublicatie → artikel, essay
- werkvoorbereiding → THEMA, VERBETERING, WERKTAAK
- IT development → requirements, ontwerp, code, tests

➡️ Waarde wordt zichtbaar in artefacten.

Value stream is agent-agnostisch, maar agent-sturend

Een value stream schrijft geen agents voor

Maar bepaalt wel:

- welke soorten agents logisch zijn
- waar uitvoerende agents waarde mogen leveren
- waar adviserende agents zinvol zijn

➡️ Agents opereren binnen value streams, niet erboven.

#### Meerdere value streams, één ecosysteem

In Mandarin:

- IT-development is niet de enige value stream
- maar vaak wel het ultieme afnemende doel

Voorbeelden:

- Kennispublicatie → waarde = inzicht & overdraagbaarheid
- Werkvoorbereiding → waarde = expliciet en ordenbaar werk
- Veranderverkenning → waarde = richting en hypotheses
- IT development → waarde = werkende systemen

Deze value streams:

- kunnen naast elkaar bestaan
- kunnen elkaar voeden
- maar blijven conceptueel gescheiden


## Value stream fase

### Definitie
Een value stream fase is een logisch afgebakende, waardecreërende eenheid binnen een value stream, waarin een specifiek type waarde tot stand komt, herkenbaar via expliciete artefacten en kwaliteitscriteria, onafhankelijk van de wijze van uitvoering.

### Kenmerken
Een value stream fase:

is een waardemoment, geen handeling

beschrijft wat voor waarde ontstaat, niet hoe

heeft een helder doel binnen de value stream

wordt zichtbaar via:

expliciete artefacttypen

bijbehorende kwaliteitsverwachtingen

vormt context voor agents die daarin opereren

➡️ Een fase produceert geen taken en stuurt geen workflow.

Wat een value stream fase niet is

Een value stream fase is niet:

- ❌ een proces
- ❌ een stappenplan
- ❌ een activiteit of taak
- ❌ een agent of rol
- ❌ een implementatiefase

Dit onderscheid is essentieel om te voorkomen dat:
- waardecreatie wordt verward met uitvoering.

#### Consequenties in het Mandarin-ecosysteem

Door deze definitie gelden de volgende canonieke regels:

- **Uitvoerende agents** leveren artefacten binnen een value stream fase
- **Adviserende agents** ondersteunen een fase, maar leveren geen fase-artefacten
- **Beheeragents** zijn fase-overstijgend en leveren geen waarde in de stream zelf

Artefacten zijn herleidbaar:

- van **agent** → **fase** → **value stream**

Als ik dit letterlijk zou normeren, dan deze formulering:

## (Mandarin) workspace 

### Definitie 
Een (Mandarin) workspace is een **afgebakende werkomgeving** die wordt ingericht om één of meer value stream fasen uit te werken, met bijbehorende artefacten, governance en ondersteunende agents.

### Kenmerken 
Een workspace:
- ❌ is geen value stream
- ✅ activeert agents
- ✅ contextualiseert werk tot specifieke fasen
- ❌ bevat geen eigen agents
Opmerking: In de eerste fase van ontwikkeling worden agents _gefetched_ uit de Mandarin workspace **Mandarin agents**. De workspaces bevatten dus wel agents, maar deze worden hier niet aangepast. In die zin 'bevatten' deze workspaces geen agents.

Een workspace kan:
- één fase ondersteunen (bijv. alleen Veranderverkenning)
- meerdere fasen ondersteunen (bijv. Werkvoorbereiding + Specificatie)


# Tot slot

## Relatie value stream ↔ agent-soort

Dit is waar het ontwerp sterk wordt:

Agent-soort	Relatie tot value stream
Adviserend	Ondersteunt waardecreatie, maar levert geen artefact
Uitvoerend	Levert expliciete artefacten binnen een stap
Beheeragent	Ondersteunt randvoorwaarden, geen directe waarde

➡️ Alleen uitvoerende agents leveren directe waarde in een value stream.
