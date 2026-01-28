# Canon-hoofdstuk: Doctrines, Charters en Waardestromen in ArchiMate

**Doel**: dit hoofdstuk maakt het onderscheid tussen **doctrines** en **charters** canoniek in de context van **waardestromen** en **resources** in ArchiMate. Het bouwt voort op de analyse in `temp/doctrines en charters uitgelegd.md` en trekt de lijn door naar het architectuurbeeld van de eco-systeem bouw- en operationele architectuur.

**Status**: canoniek principehoofdstuk (architectuur-neutraal, ArchiMate als referentietaal).

---

## 1. Kort overzicht van de begrippen

### 1.1 Doctrine – gedragsafspraak voor een waardestroom

In deze canon is een **doctrine** een normatieve beschrijving van **hoe een waardestroom werkt**.

Kenmerken:
- hoort bij één **value stream** (bijvoorbeeld IT Development),
- beschrijft de **flow van werk** (fases of value stream stages),
- legt **kwaliteitsverwachtingen** per fase vast,
- is normatief, maar **niet** gekoppeld aan één specifieke rol of agent.

Een doctrine zegt: *“Zo hoort deze waardestroom zich te gedragen.”*

### 1.2 Charter – gedragsafspraak voor een actor

Een **charter** beschrijft het gedrag en de verantwoordelijkheid van een **actor** (mens of agent) binnen een of meer waardestromen.

Kenmerken:
- rol- en gedragsgericht,
- normatief voor degene die de rol vervult,
- beschrijft wat iemand of iets **doet** en **laat**,
- is altijd gekoppeld aan een actor (rol, agent, capability).

Een charter zegt: *“Zo hoort deze actor zich te gedragen binnen deze context.”*

### 1.3 ArchiMate: waardestroom en resources

In ArchiMate gebruiken we in deze canon vooral:

- **Value Stream**: een aaneenschakeling van stappen waarmee waarde wordt gecreëerd.
- **Value Stream Stage** (of fase): herkenbare stap binnen de waardestroom.
- **Capability**: wat een organisatie of ecosysteem in staat is te doen.
- **Resource**: een middel dat capabilities en waardestromen gebruiken (bijvoorbeeld een repository, een dataset, een standaard of een tool).

De koppeling is dan:
- Doctrine ↔ Value Stream (en haar stages),
- Charter ↔ Rollen en capabilities die de stages realiseren,
- Resources ↔ Middelen die onder charter-verantwoordelijkheid vallen.

---

## 2. Doctrine als lens op de waardestroom

### 2.1 Doctrine en ArchiMate value stream

Een **doctrine** beschrijft hoe werk door de waardestroom stroomt. In ArchiMate-termen:

- de doctrine legt de **semantiek** vast van een **Value Stream** en haar **stages**;
- de doctrine geeft per fase aan **welke uitkomst** minimaal moet worden bereikt;
- de doctrine benoemt de belangrijkste **kwaliteitsverwachtingen** (bijvoorbeeld traceerbaarheid, herhaalbaarheid, auditability).

De doctrine is daarmee de **betekenislaag** boven op de ArchiMate value stream. Zonder doctrine is een value stream-diagram slechts een reeks blokken; met doctrine wordt duidelijk **wat “goed” gedrag is** in elke stap.

### 2.2 Doctrine en capabilities

Een doctrine koppelt niet direct aan specifieke capabilities, maar:

- definieert **welke soorten capabilities** nodig zijn om de waardestroom betrouwbaar uit te voeren;
- geeft richting aan **architectuurprincipes** voor die capabilities (bijvoorbeeld “contract-first prompt design”, “scheiding van regels, processen en data”).

In ArchiMate kun je dit zichtbaar maken door:
- de **Value Stream** te koppelen aan relevante **Capabilities**;
- in de canon vast te leggen welke doctrinaire afspraken gelden voor die combinatie.

---

## 3. Charters als lens op actoren en resources

### 3.1 Fase-charters en agent-charters

De canon maakt een belangrijk onderscheid:

- **Fase-charter**: abstract rolcharter dat beschrijft hoe een actor zich hoort te gedragen binnen een **specifieke fase** van een waardestroom.
- **Agent-charter**: concreet charter voor één **specifieke agent** (of rol), dat één of meer fase-charters operationaliseert.

Belangrijk:
- een **fase-charter** blijft gekoppeld aan de **Value Stream Stage** en is dus **geen doctrine**;
- een **agent-charter** blijft gekoppeld aan een **Actor / Role** en bijbehorende **Capability** in ArchiMate.

### 3.2 Charters en ArchiMate-actoren

In ArchiMate kun je charters lezen als de **normatieve laag** bovenop:

- **Business Actor / Application Component** (wie voert uit?),
- **Role** (welke hoedanigheid?),
- **Capability** (wat kan deze actor?),
- **Assignment** relaties richting Value Stream Stages (welke stap wordt mede gerealiseerd?).

De canon-afspraak is:

- elk **agent-charter** hoort bij precies één **primaire role/capability-combinatie**;
- hetzelfde charter mag door meerdere concrete implementaties worden gebruikt, zolang die binnen dezelfde capability-ruimte vallen.

### 3.3 Charters en resources

Een charter verankert ook **resource-verantwoordelijkheid**:

- welke **resources** mag of moet de actor beheren (bijvoorbeeld een canon-repository, een diagramsuite, een logfolder);
- onder welke **regels** mogen resources worden gelezen of geschreven (bijvoorbeeld alleen Markdown, geen PDF, geen gevoelige data).

In ArchiMate kun je dit uitdrukken door:

- **Resources** te koppelen aan de capabilities van een actor;
- in het charter expliciet te maken **welke resources onder dit mandaat vallen** en met welke beperkingen.

---

## 4. Samenhang: van constitutie tot agent in ArchiMate

De hiërarchie uit `temp/doctrines en charters uitgelegd.md` kunnen we vertalen naar een ArchiMate-beeld:

1. **Constitutie**  
   Bovenliggende set van principes en grondhouding (in deze workspace: gedragscode, beleid, canon-principes).

2. **Value Stream**  
   Bijvoorbeeld de IT Development value stream, gemodelleerd als ArchiMate **Value Stream** met bijbehorende **stages**.

3. **Doctrine**  
   Normatieve beschrijving van deze waardestroom: welke stappen, in welke volgorde, met welke kwaliteitsverwachtingen.

4. **Fases / Value Stream Stages**  
   Herkenbare stappen zoals Specificatie, Ontwerp, Bouw, Validatie, elk als ArchiMate **Value Stream Stage**.

5. **Fase-charters**  
   Abstracte rolcharters per stage: ze leggen vast **hoe actoren zich in die fase horen te gedragen**.

6. **Agent-charters**  
   Concrete charters per agent; gekoppeld aan ArchiMate **Roles**, **Capabilities** en de **Resources** die ze mogen gebruiken.

Deze ordening voorkomt dat doctrinaire afspraken en rolafspraken door elkaar gaan lopen. In een ArchiMate-model blijft dan duidelijk:

- wat de waardestroom is (Value Stream),
- hoe die zich hoort te gedragen (Doctrine),
- wie welke delen realiseert (Actors/Roles met charters),
- welke middelen daarbij horen (Resources).

---

## 5. Praktische patronen en anti-patterns

### 5.1 Patronen

- **Doctrine-naar-value-stream patroon**  
  Begin met de beschrijving van de waardestroom (IT Development, issue-afhandeling, ecosysteem-bouw). Ontwerp daarna de doctrine die gedrag, volgorde en kwaliteitsverwachtingen canoniek vastlegt. Modelleer de waardestroom in ArchiMate als **Value Stream** met **stages**.

- **Fase-charter-naar-stage patroon**  
  Voor elke fase in de doctrine definieer je een **fase-charter**. In ArchiMate koppel je dit conceptueel aan de betreffende **Value Stream Stage** en aan de capabilities die deze stage realiseren.

- **Agent-charter-naar-actor patroon**  
  Voor elke concrete agent maak je een **agent-charter** dat expliciet verwijst naar de relevante fase-charters en doctrine. In ArchiMate verbind je de agent (Actor/Component) en zijn Role met de juiste **Capabilities**, **Resources** en **Value Stream Stages**.

### 5.2 Anti-patterns

- **Doctrine-inflatie**  
  Elk normatief document “doctrine” noemen. Gevolg: het onderscheid tussen systeemgedrag en rolgedrag vervaagt. Canon-afspraak: *niet alles wat normatief is, is een doctrine*.

- **Charter zonder waardestroom**  
  Charters ontwerpen zonder eerst de onderliggende waardestroom en doctrine helder te hebben. Gevolg: agents met een onduidelijke plek in het ecosysteem.

- **Resources zonder eigenaar**  
  Resources modelleren in ArchiMate zonder dat in een charter is vastgelegd **wie waarover gaat**. Gevolg: onduidelijke verantwoordelijkheid en zwakke governance.

---

## 6. Koppeling met de eco-systeem architectuur

In de eerder beschreven architectuurhoofdstukken:

- de **Ecosysteem Bouwarchitectuur (EBA)** beschrijft hoe we het ecosysteem zelf bouwen en evolueren;
- de **Operationele Ecosysteemarchitectuur (OEA)** beschrijft hoe issues door het werkende ecosysteem stromen.

In beide perspectieven geldt:

- doctrines kaderen de **waardestromen** van bouwen en werken;
- charters kaderen de **rollen en agents** die capabilities leveren in die waardestromen;
- resources (bijvoorbeeld repositories, templates, logs, diagrammen) worden expliciet gekoppeld aan charters, zodat duidelijk is wie welke middelen onder welke voorwaarden mag gebruiken.

Dit hoofdstuk verankert dat semantische onderscheid en maakt het herbruikbaar voor alle toekomstige ArchiMate- en C4-modellen in deze canon.

---

## 7. Voor de Archimate Modelleur

Gebruik dit hoofdstuk als semantische basis bij het modelleren van waardestromen en resources:

- behandel **doctrines** als betekenislaag boven op **Value Streams** en **Value Stream Stages**;
- behandel **charters** als betekenislaag boven op **Actors**, **Roles** en **Capabilities**;
- koppel **Resources** alleen aan capabilities en actoren als in de bijbehorende charters duidelijk is wie verantwoordelijk is en onder welke regels gewerkt wordt.

Wanneer er twijfel ontstaat of iets een doctrine, (fase-)charter of agent-charter is, begin dan bij de vraag:

> *Gaat dit over gedrag van de waardestroom, of over gedrag van één actor?*

Het antwoord bepaalt of je in ArchiMate primair naar de waardestroom-laag (doctrine) of naar de actor- en capability-laag (charters) moet modelleren.
