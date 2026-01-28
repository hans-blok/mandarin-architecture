# Een nieuw wiel op een oude as

## Ondertitel

Contract-first agent-ontwerp met capability boundaries, governance en uitvoerbaarheid

---

## Inleiding

In de wereld van agentische systemen lijkt veel nieuw. We werken met nieuwe materialen (LLM’s), nieuwe tools en nieuwe vormen van automatisering. Daardoor ontstaat snel de indruk dat we ook nieuwe architectuurprincipes nodig hebben.

Deze paper gebruikt daarom een metafoor: **de as en het wiel**.

- De **as** staat voor klassiek, beproefd architectuurdenken: boundaries, verantwoordelijkheden, contract-first ontwerp, scheiding van zorgen en governance.
- Het **wiel** staat voor het agent-concept zoals we het in de praktijk toepassen: een uitvoerbare capability, met duidelijke grenzen en observeerbaar gedrag.

Belangrijk detail: de as bestaat al lang. Wat vaak ontbrak, is een wiel dat er goed op past. In veel agent-oplossingen vallen namelijk drie dingen samen in één tekstblok:

- prompt = agent
- agent = rolbeschrijving
- rolbeschrijving = uitvoering

Dan probeert men iets rond te laten draaien zonder het goed te bevestigen. Het resultaat is voorspelbaar: scope wordt impliciet, contracten worden vaag, en governance komt te laat.

Onze stelling is daarom bescheiden maar scherp:

We vinden de as niet opnieuw uit. We ontwerpen een nieuw wiel dat eindelijk **compatibel** is met die bestaande as.

## Samenvatting

Veel agent-systemen voelen nieuw, maar missen een oude, bewezen basis: **expliciete afbakening** en **heldere contracten**. In deze paper beschrijven we een aanpak die bekende architectuurprincipes consequent toepast op agents. Het doel is niet om een nieuw idee te verzinnen, maar om bestaande ideeën **op een hoger niveau van explicietheid** te gebruiken.

De kern is een vaste afleidingsrichting:

**boundary → contract → rol → uitvoering**

Daarmee maken we agents bestuurbaar, testbaar en overdraagbaar.

---

## 1. Waarom deze paper

De vraag is: *doen we iets nieuws, of is dit bekend in de literatuur?*

Eerlijk antwoord:

- We staan niet los van bestaande architectuur.
- We combineren bekende ideeën op een manier die je in agent-landschap nog weinig ziet.

Kort gezegd:

We verzinnen de as niet opnieuw; we ontwerpen een wiel dat erop past.

---

## 2. Waar dit op lijkt (bekende basis)

### 2.1 Contract- en service-denken

In service-architectuur is het idee bekend: **eerst het contract**, daarna de implementatie.

Wat wij anders doen:

- We passen dit niet toe op services, maar op **agents**.
- We behandelen een prompt als een **extern waarneembare afspraak**.

### 2.2 Domain-Driven Design (DDD)

DDD benadrukt dat je eerst een **bounded context** afbakent. Pas daarna volgt taal en implementatie.

In onze aanpak lijkt dit op:

- capability boundary (onze afbakening)
- contracten (prompts) die uit die boundary voortkomen

### 2.3 Microservices en API design

In microservices is één service vaak verantwoordelijk voor één capability, maar kan die service meerdere operaties hebben.

Dat helpt om het volgende helder te maken:

- Eén agent kan meerdere prompts hebben, zolang ze binnen dezelfde boundary vallen.

---

## 3. Wat is wél echt vernieuwend (in praktijk)

De volgende punten zijn niet nieuw als theorie, maar wel **zeldzaam expliciet** in agent-systemen:

1. **Boundary-bepaling als expliciete rol**
   - Iemand (of iets) bepaalt bewust wat de agent wel en niet is.

2. **Prompt ≠ rol ≠ agent**
   - In veel LLM-systemen vallen deze samen.
   - Wij trekken dit uit elkaar:
     - prompt = contract
     - rolbeschrijving = interne werking
     - agent = drager van capabilities (en kan meerdere prompts hebben)

3. **Governance-first ecosysteem**
   - Regels en structuur zijn niet bijzaak, maar fundament.

4. **Afleidingsrichting is omgekeerd en expliciet**
   - Niet: rol → prompt
   - Wel: boundary → contract → rol → uitvoering

---

## 4. De kern: boundary → contract → rol → uitvoering

Deze afleidingsrichting voorkomt twee bekende valkuilen:

- **Prompt-first zonder ontwerp**: de agent wordt vaag en “mag alles”.
- **Charter-first als enige basis**: het externe contract wordt een afgeleide bijzaak.

Onze uitweg is geen simpele volgordewissel, maar een ontwerpdiscipline:

1. **Boundary**
   - Formuleer één capability boundary in één zin.
   - Maak ook expliciet wat niet binnen de boundary valt.

2. **Contract (prompt)**
   - De prompt is een contract: kort, normatief, observeerbaar.
   - Het contract zegt: wat gaat erin, wat komt eruit, wanneer stoppen we.

3. **Rolbeschrijving**
   - Beschrijft de interne werking, verantwoordelijkheden en grenzen.
   - Legt uit hoe het contract betrouwbaar wordt uitgevoerd.

4. **Uitvoering (runner)**
   - Maakt herhaalbare stappen uitvoerbaar (zonder AI-interactie).
   - Is implementatie, geen betekenis.

---

## 5. Rollen in het model: Moeder ↔ Agent Smeder ↔ Agent

We gebruiken een duidelijke rolverdeling:

- **Moeder** bepaalt welke agents worden gemaakt en definieert per agent de capability boundary.
- **Agent Smeder** vertaalt die boundary naar artefacten: prompt-contract, rolbeschrijving en runner-structuur.
- **De nieuwe agent** voert zijn capability uit binnen die grenzen.

Eenvoudig model:

```
Moeder
  | bepaalt: welke agent + boundary
  v
Agent Smeder
  | ontwerpt: contract -> rol -> runner
  v
Nieuwe Agent
  | voert uit binnen boundary
  v
Resultaten (Markdown / files) in de workspace
```

Deze scheiding maakt het ecosysteem bestuurbaar:

- Moeder stuurt op landschap en scope.
- Agent Smeder stuurt op consistentie en uitvoerbaarheid.
- De agent stuurt op taakuitvoering.

---

## 6. Regels, processen en data: de operationele driehoek

Een robuust ecosysteem blijft overzichtelijk als drie dingen uit elkaar blijven:

1. **Regels**: wat mag en wat moet (normatief)
2. **Processen**: wat gebeurt er (gedrag)
3. **Data**: wat is waar en wat is de toestand (feiten)

In ons ecosysteem vertalen we dat concreet naar:

- **Regels** → standards repository (normen, grenzen, governance)
- **Processen** → agent capabilities (wat agents kunnen doen)
- **Data** → workspaces (de feitelijke toestand en output)

Canonieke uitspraak:

- Regels beschrijven wat geldig is, niet hoe iets gebeurt.
- Processen belichamen gedrag, maar bezitten geen waarheid.
- Data is toestand, geen gedrag en geen regel.

---

## 7. Waarom dit werkt

Deze aanpak werkt omdat hij drie dingen tegelijk bewaakt:

1. **Begrijpelijkheid**
   - Je kunt altijd uitleggen wat de agent belooft en wat niet.

2. **Bestuurbaarheid**
   - Scope creep wordt zichtbaar, omdat de boundary leidend is.

3. **Uitvoerbaarheid**
   - Een contract is pas echt een contract als het ook herhaalbaar uitgevoerd kan worden.

---

## 8. Conclusie

Wat we doen is geen nieuw idee verzinnen. We passen bekende architectuurprincipes consequent toe op agents, en doen dat op een niveau van explicietheid dat in de praktijk nog zeldzaam is.

Het “nieuwe wiel” is niet het wiel. Het is de as:

**expliciete boundaries + contracten + governance + uitvoerbaarheid**.
