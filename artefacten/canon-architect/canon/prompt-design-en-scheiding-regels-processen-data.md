# Canon-hoofdstuk: Prompt Design (contract-first) en de scheiding Regels–Processen–Data

**Doel**: dit hoofdstuk legt twee samenhangende ontwerpkeuzes canoniek vast:
1. **Prompt Design (contract-first)**: eerst de externe belofte expliciet maken, pas daarna de interne legitimatie en uitvoering.
2. **Scheiding van zorgen**: **Regels**, **Processen** en **Data** zijn drie aparte aspecten die je bewust uit elkaar houdt.

**Status**: canoniek principehoofdstuk (operationeel toepasbaar, niet tool-specifiek).

---

## 1. Begrippen (kort en scherp)

### 1.1 Prompt
Een prompt is in dit ecosysteem **een contract**:
- kort
- expliciet
- normatief (het zegt wat geldig gedrag is)
- extern waarneembaar (de gebruiker kan het resultaat toetsen)

Een prompt is dus niet:
- een implementatiehint
- een interne uitleg hoe “slim” de agent is

### 1.2 Charter
Een charter is een **interne constitutie**:
- het legitimeert de agent
- het begrenst bevoegdheden
- het beschermt de contract-integriteit van prompts

### 1.3 Runner / workflow
Runner en workflow zijn **uitvoering**:
- hoe de belofte geleverd wordt
- met welke kwaliteitsgates
- onder welke operationele condities

---

## 2. Canoniek principe: Prompt Design is de eerste ontwerpstap

### 2.1 De kern
De juiste volgorde is niet “prompt-first” of “charter-first”, maar:

1. **Prompt Design (extern, normatief)**
2. **Charter (intern, legitimerend)**
3. **Runner/workflow (uitvoering)**

Het belangrijkste inzicht:

**Een agent heeft geen prompts. Een agent wordt gelegitimeerd om prompts te dragen.**

### 2.2 Waarom dit canoniek is
Dit beschermt het ecosysteem tegen twee bekende fouten:

- **Charter-first zonder expliciet contract-design**
  - risico: de prompt wordt een afgeleide “bijzaak”
  - gevolg: het externe contract wordt vaag of inconsistent

- **Prompt-first zonder ontwerpdiscipline**
  - risico: impliciete scope en verborgen bevoegdheden
  - gevolg: “oh ja, dat doet hij ook” (scope creep)

### 2.3 Meerdere prompts per agent (wel/niet)
Meerdere prompts per agent is toegestaan en vaak logisch, mits:
- alle prompts dezelfde verantwoordelijkheid dienen (zelfde capability-ruimte)
- dezelfde grenzen en veiligheidsregels delen
- hetzelfde domeinvocabulaire en IO-structuur delen

Als prompts duidelijk verschillende verantwoordelijkheden hebben, splitst je in meerdere agents.

---

## 3. Canoniek principe: scheid Regels, Processen en Data

### 3.1 Waarom deze scheiding nodig is
Een agent-ecosysteem blijft bestuurbaar en overdraagbaar als je drie dingen uit elkaar houdt:

- **Regels**: wat mag/moet/niet mag
- **Processen**: wat gebeurt er, in welke volgorde, met welke intentie
- **Data**: feiten, context en werktoestand

Deze drie zijn gelijkwaardig. Geen van de drie “bezit” de andere.

### 3.2 Regels (normatief fundament)
Regels zijn:
- de bron van waarheid voor normen en grenzen
- niet uitvoerend
- niet context-specifiek

Canoniek:

**Regels beschrijven wat geldig is, niet hoe iets gebeurt.**

Praktische implicatie:
- regels mogen niet stilletjes door agents worden aangepast
- regels moeten leesbaar zijn voor mens én agent

### 3.3 Processen (capabilities als geabstraheerd gedrag)
Processen beschrijven gedrag:
- intentioneel (waarom bestaat dit?)
- met begin/eindconditie
- benaderbaar via één of meerdere prompts

Canoniek:

**Processen belichamen gedrag, maar bezitten geen waarheid.**

### 3.4 Data (workspaces als feitelijke werkelijkheid)
Data is toestand:
- persistent zolang nodig
- auditeerbaar
- onafhankelijk van individuele agents

Canoniek:

**Data is toestand, geen gedrag en geen regel.**

Praktische implicatie:
- agents bezitten geen data
- agents werken tijdelijk met data, maar laten de toestand achter in de workspace

---

## 4. Samenhang: de stabiele driehoek

Als je dit consistent toepast:
- Regels blijven stabiel terwijl agents wisselen
- Processen kunnen evolueren zonder dat data breekt
- Data blijft bestaan zonder actieve processen

Dat maakt de canon overdraagbaar: ook als tooling of agent-implementaties veranderen.

---

## 5. Voor de C4 Modelleur

Gebruik dit hoofdstuk als semantische basis voor modellen:
- Prompt = contract (extern zichtbaar gedrag)
- Charter = interne governance/legitimatie
- Runner/workflow = uitvoering (containers/processen)
- Regels/Processen/Data als drie aparte concepten die je niet mengt in één element
