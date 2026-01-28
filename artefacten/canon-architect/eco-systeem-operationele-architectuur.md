# Operationele Ecosysteemarchitectuur (OEA)

## 1. Doel en situering

De **Operationele Ecosysteemarchitectuur (OEA)** beschrijft hoe het *werkende* agentische ecosysteem issues ontvangt, interpreteert en afhandelt.

Waar de **Ecosysteem Bouwarchitectuur (EBA)** gaat over het *maken en evolueren* van het ecosysteem met LLM’s, gaat de OEA over de **dagelijkse werking**:
- een developer of product owner legt een issue vast,
- het ecosysteem activeert de juiste agents en workflows,
- resultaten worden teruggekoppeld in dezelfde keten (bijvoorbeeld naar de issue-tracker of repository).

De OEA is daarmee het **operationele gezicht** van het agentische systeem.

---

## 2. Hoofdactoren en context

- **Eco-systeem Developer / Product Owner**  
  Formuleert issues, beoordeelt resultaten en neemt beslissingen. Werkt meestal in een backlog-tool en Git-repositories.

- **Agentisch Ecosysteem**  
  Verzameling van agents, scripts en workflows die samen taken uitvoeren op basis van issues en gebeurtenissen.

- **Bron- en doelrepos**  
  - Projectrepo’s waarin code, configuratie en documentatie leven.  
  - Eventuele canon- of capabilities-repo’s waar het ecosysteem naar kan verwijzen.

- **Externe diensten**  
  Bijv. CI/CD, containerregistries, observability-platformen of LLM-diensten die tijdens uitvoering worden aangeroepen.

---

## 3. Globale flow van een issue

1. **Issue creatie**  
   Een mens (developer, product owner) maakt een issue aan met doel, context en gewenste uitkomst.

2. **Intake en classificatie**  
   Een of meer agents lezen het issue en bepalen:
   - welk type werk nodig is (bijv. documentatie, code, configuratie),
   - welke capabilities of agents daarbij horen,
   - of aanvullende verheldering nodig is.

3. **Planning en orkestratie**  
   Een orkestrerende agent (of workflow) koppelt het issue aan:
   - concrete taken en subtaken,
   - passende agents of pipelines (bijv. “maak nieuwe agent”, “pas C4-diagram aan”, “optimaliseer layout”).

4. **Uitvoering door agents**  
   De geselecteerde agents voeren hun deel uit:
   - lezen context (repositories, canon, charters),
   - roepen waar nodig externe systemen aan (bijv. LLM’s, CI/CD),
   - maken of wijzigen bestanden (code, docs, configuratie).

5. **Terugkoppeling en validatie**  
   Resultaten worden teruggeschreven naar:
   - de issue-tracker (status, commentaar, links naar commits/PR’s),
   - de relevante repositories (commits, merge requests),
   - aanvullende rapporten (bijv. layout-rapporten, architectuurupdates).

6. **Afronding**  
   Een mens beoordeelt de uitkomst. Als het resultaat voldoet, wordt het issue gesloten; anders wordt een nieuwe iteratie gestart.

---

## 4. Kerncomponenten in de OEA

### 4.1 Orchestratie-laag

- **Issue Orchestrator**  
  Leest issues en besluit welke ketens (pipelines, agents) worden geactiveerd.

- **Workflow Engine / CI-CD**  
  Voert geautomatiseerde ketens uit, zoals:
  - genereren of updaten van artefacten,
  - draaien van tests,
  - bouwen en deployen van containers of documentatie.

### 4.2 Agents en capabilities

- **Domein-specifieke agents**  
  Bijvoorbeeld:
  - een C4 Modelleur die architectuurdiagrammen bijwerkt,
  - een Layout Optimizer die Structurizr-diagrammen optimaliseert,
  - een Docker Steward die containeromgevingen beheert.

- **Capabilities en charters**  
  Elke agent werkt vanuit een duidelijk charter en een capabilities-set, zodat:
  - het ecosysteem weet wat de agent wel/niet kan,
  - routing van issues naar de juiste agent mogelijk is.

### 4.3 Data- en documentbronnen

- **Repositories als waarheid**  
  De operationele staat van het ecosysteem ligt vast in Git-repositories (code, scripts, documentatie, configuratie).

- **Rapportage-artefacten**  
  Bijvoorbeeld layout-rapporten, architectuuroverzichten en statusrapporten die mensen helpen beslissen.

---

## 5. Samenhang met de EBA

- De **EBA** levert de bouwstenen van het ecosysteem: agents, scripts, workflows en documentatie.
- De **OEA** beschrijft hoe die bouwstenen **samen een operationele keten vormen** rondom issues.
- Wijzigingen in de OEA (bijvoorbeeld nieuwe typen issues of nieuwe agentrollen) leiden vaak tot:
  - nieuwe of aangepaste charters (in de bouwketen),
  - updates in de bouwarchitectuur (EBA),
  - extra documentatie in de canon.

OEA en EBA zijn dus **twee perspectieven op hetzelfde ecosysteem**: 
- EBA kijkt naar *hoe we het systeem bouwen en evolueren*,
- OEA kijkt naar *hoe het systeem dagelijks werkt*.

---

## 6. Architectuur in één zin

De **Operationele Ecosysteemarchitectuur (OEA)** beschrijft hoe issues via orchestratie, agents en geautomatiseerde workflows door het agentische ecosysteem stromen, zodat werk van mens en agent samenhangend, traceerbaar en herhaalbaar wordt uitgevoerd.

---

## 7. Voor de C4 Modelleur

Dit document is een **canoniek referentiepunt** voor de C4 Modelleur. Voor C4-diagrammen over de operationele werking van het ecosysteem geldt:

- De C4 Modelleur gebruikt dit document als **primaire tekstuele bron** voor context-, container- en componentdiagrammen van de OEA.
- Eventuele aanvullende C4-bronnen worden door de Canon Architect expliciet aangewezen en sluiten inhoudelijk aan op deze beschrijving.
