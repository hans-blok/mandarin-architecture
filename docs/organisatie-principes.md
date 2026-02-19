# Organisatie-Principes — Ondernemingsvorming

**Versie**: 1.0  
**Datum**: 18 januari 2026  
**Eigenaar**: Mandaryn-EA  
**Review-cyclus**: Jaarlijks of bij significante veranderingen  
**Scope**: Ondernemingsvorming value stream (Mandaryn ontwikkeling)

---

## Inleiding

Dit document definieert de organisatie-principes voor de ondernemingsvorming waarin Mandaryn wordt ontwikkeld. Deze principes vormen de fundamentele grondslagen voor hoe we als organisatie opereren, beslissingen nemen en waarde creëren.

Ze zijn bedoeld als strategische richtlijnen die de lange termijn koers bewaken en operationele besluiten sturen.

---

## Principe 1 — Soevereiniteit

**Korte beschrijving**  
Wij zijn soeverein: we nemen onze eigen besluiten en maken ons niet structureel afhankelijk van externe partijen, leveranciers of gesloten ecosystemen.

### Rationale
Door soevereiniteit te kiezen, behouden we controle over onze eigen richting, kennis en ontwikkeling.

In een wereld waarin vendor lock-in en afhankelijkheid van grote platforms steeds groter worden, beschermt dit principe onze vrijheid om te kiezen wat het beste is voor onze eigen situatie.

### Implicaties

**Voor besluitvorming**:
- We kiezen bewust voor open standaarden en open source tools
- Bij leverancierskeuzes weegt lange termijn autonomie zwaarder dan korte termijn gemak
- We bouwen en beheren kernkennis zelf in plaats van volledig uit te besteden

**Voor architectuur en technologie**:
- Vendor lock-in wordt actief vermeden
- We prefereren oplossingen waarbij we data en logica volledig beheren
- We blijven zelf ontwikkelen en innoveren, ook als dat meer inspanning vraagt

**Voor organisatie en cultuur**:
- We investeren in eigen kennis en vaardigheden
- We documenteren en delen kennis intern zodat we niet afhankelijk zijn van individuele personen of externe partijen
- We nemen verantwoordelijkheid voor onze eigen koers

### Voorbeelden

**Goed** ✓
- Gebruik van Linux als besturingssysteem in plaats van proprietary alternatieven
- Kiezen voor open source databases met sterke community en standaarden
- Zelf agents ontwikkelen en beheren binnen Mandaryn in plaats van afhankelijk zijn van closed source AI platforms
- Gebruik van Git met eigen repository-beheer in plaats van volledige afhankelijkheid van één cloud provider

**Slecht** ✗
- All-in gaan op één cloud provider zonder exit-strategie
- Kritieke bedrijfslogica volledig outsourcen zonder kennis intern te houden
- Proprietary formats gebruiken zonder conversie-mogelijkheid naar open standaarden
- Afhankelijk worden van één leverancier voor alle tooling zonder alternatieven

---

## Principe 2 — Continuïteit van Architectuurdenken

**Korte beschrijving**  
Hoewel AI disruptief is voor de IT-markt, blijven wij werken volgens bestaande architectuurprincipes.

### Rationale
Net als eerdere technologische sprongen (bijvoorbeeld van machinetaal naar hogere programmeertalen) maakt AI IT niet eenvoudiger, maar complexer. De fundamentele uitdagingen van software-ontwikkeling—scheiding van verantwoordelijkheden, onderhoudbaarheid, testbaarheid—blijven bestaan en worden zelfs belangrijker.

Dit principe bewaakt dat we niet in de valkuil stappen van "magische" oplossingen waarbij architectuur wordt vergeten. AI is een krachtige tool, maar geen vervanging voor structureel denken.

### Implicaties

**Voor systeem-ontwerp**:
- We blijven denken in concerns en verantwoordelijkheden
- Scheiding van verantwoordelijkheden blijft leidend (ook bij AI-componenten)
- Nieuwe technologie verandert tooling en implementatie, niet het architecturele denkraam

**Voor ontwikkeling**:
- We vermijden "magische" oplossingen zonder duidelijke architectuur
- Complexiteit wordt beheerst door structuur en helderheid, niet door slimheid
- We documenteren beslissingen en trade-offs expliciet

**Voor governance**:
- Architectuurreviews blijven verplicht, ook voor AI-componenten
- Bestaande quality gates en kwaliteitseisen blijven van kracht
- We passen beproefde patronen toe voordat we nieuwe patronen introduceren

### Voorbeelden

**Goed** ✓
- Agent capabilities expliciet begrenzen en documenteren in charters
- Prompts scheiden van business logica en data
- State management en side effects duidelijk isoleren
- Agents ontwerpen volgens single responsibility principle

**Slecht** ✗
- Een groot AI-model inzetten zonder duidelijke capability boundary
- Prompts mengen met configuratie, data en business rules in één bestand
- "De AI lost het wel op" zonder architecturele afwegingen
- Agents met vage, overlappende verantwoordelijkheden en onduidelijke grenzen

---

## Principe 3 — Waarde vóór Schaal

**Korte beschrijving**  
We bewijzen eerst dat iets waarde heeft, voordat we proberen het groot te maken.

### Rationale
In een vroege fase is schaal vaak een afleiding. Het echte risico is niet dat iets niet schaalt, maar dat het geen betekenisvolle waarde heeft. Door eerst te focussen op waarde, leren we wat echt belangrijk is en voorkomen we verspilling van energie aan schaalbaarheidsproblemen die misschien nooit relevant worden.

Dit principe bewaakt onze focus en voorkomt over-engineering en premature optimization. Het dwingt ons om met kleine, echte signalen te werken in plaats van met grote aannames.

### Implicaties

**Voor product-ontwikkeling**:
- Ideeën worden eerst inhoudelijk getoetst met een klein, concreet publiek
- We bouwen voor een concrete use case, niet voor "de markt" in het algemeen
- Kleine, echte signalen (gebruik, feedback) wegen zwaarder dan grote aannames

**Voor architectuur**:
- Schaalbaarheid volgt uit waarde, niet andersom
- We bouwen simpel en uitbreidbaar, niet complex en "klaar voor de toekomst"
- We refactoren naar schaal als dat nodig blijkt, niet bij voorbaat

**Voor besluitvorming**:
- Beslissingen worden genomen op basis van leren en feedback, niet op basis van ambitie of aannames
- We investeren in experimenten en prototypes voordat we grote commitments maken
- We accepteren dat niet elk idee schaalt, en dat is oké

### Voorbeelden

**Goed** ✓
- Een nieuwe agent eerst testen met één concrete use case en iteratief verbeteren
- Een workflow handmatig doorlopen voordat we automation bouwen
- Een kennisartikel publiceren en feedback verzamelen voordat we een hele serie maken
- Een simple file-based implementation voordat we een database introduceren

**Slecht** ✗
- Meteen een complexe microservices architectuur opzetten voor een eerste prototype
- Een schaalbare database-oplossing bouwen voordat we weten of iemand het product gebruikt
- Een algemeen framework ontwikkelen zonder concrete use case
- Investeren in performance optimization voordat we weten of de feature waarde heeft

---

## Samenhang en Implementatie

Deze drie principes versterken elkaar:

**Soevereiniteit** bewaakt onze onafhankelijkheid en autonomie.  
**Architectuurdenken** bewaakt onze samenhang en structuur.  
**Waarde vóór schaal** bewaakt onze focus en leren.

Samen vormen ze een fundament voor hoe we werken: onafhankelijk, gestructureerd en gericht op echte waarde.

### Conflicten tussen principes
In de praktijk kunnen principes soms botsen:
- Soevereiniteit kan leiden tot meer complexiteit (alles zelf doen vs. kopen)
- Architectuurdenken kan vertragen (structuur kost tijd)
- Waarde vóór schaal kan leiden tot technische schuld (snel leren vs. robuust bouwen)

Bij dergelijke dilemma's:
1. Maak de trade-off expliciet
2. Kies bewust welk principe voorrang heeft in deze specifieke situatie
3. Documenteer de keuze en de rationale
4. Evalueer achteraf of de keuze juist was

---

## Aanbevelingen

### Voor stakeholders
- **Architecten en developers**: Gebruik deze principes als toetssteen bij design reviews en technische beslissingen
- **Governance**: Controleer of nieuwe initiatieven en artefacten consistent zijn met deze principes
- **Agent Curator**: Zorg dat nieuwe agents en charters deze principes reflecteren in capability boundaries en werkwijze

### Vervolgstappen
1. **Systeem-principes definiëren**: De Mandaryn-EA moet nu systeem-principes voor Mandaryn platform opstellen die aligned zijn met deze organisatie-principes
2. **Value stream definitie**: Definieer de ondernemingsvorming value stream expliciet met stakeholders, in/out criteria en agents
3. **Gap-analyse**: Voer een gap-analyse uit tussen huidige staat en gewenste staat conform deze principes
4. **Communicatie**: Deel deze principes met alle betrokkenen en organiseer een review-sessie

### Review en onderhoud
- **Jaarlijkse review**: Evalueer of deze principes nog steeds relevant zijn
- **Bij grote wijzigingen**: Als er fundamentele veranderingen zijn in context of richting, herzie dan deze principes
- **Versioning**: Nieuwe versies krijgen een nieuw versienummer en worden gedocumenteerd in `docs/resultaten/mandaryn-ea/`

---

*Dit document is opgesteld door Mandaryn-EA conform de werkwijze beschreven in `charters-agents/charter.mandaryn-ea.md`. Voor vragen of feedback, escaleer naar governance.*