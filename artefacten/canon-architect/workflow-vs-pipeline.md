# Workflow vs Pipeline: Intentie en Operationalisatie

**Auteur**: Canon Architect  
**Datum**: 2026-01-13  
**Versie**: 1.0

## Samenvatting

In agentische systemen is het onderscheid tussen **workflow** en **pipeline** cruciaal. Een workflow definieert de intentionele structuur van werk: *wat* moet er gebeuren en *waarom*. Een pipeline operationaliseert die structuur met controle, herhaalbaarheid en kwaliteitsgates: *hoe* het gebeurt en *onder welke voorwaarden*.

Deze paper legt het verschil uit en trekt een analogie met BPMN (Business Process Model and Notation) voor traditionele processen.

## Definitie: Workflow

Een **workflow** is de intentionele structuur van werk. Het beschrijft:
- **Wat**: Welke stappen of taken moeten worden uitgevoerd
- **Waarom**: Wat het doel is van elke stap
- **Wanneer**: In welke volgorde stappen plaatsvinden
- **Afhankelijkheden**: Welke stap wacht op welke andere stap

Een workflow is **intentioneel**: het legt de logica vast van hoe werk is georganiseerd vanuit een doel of behoefte. Het is abstract en conceptueel.

### Voorbeeld workflow
```
Taak: Van user story naar gedocumenteerde implementatie

Stappen:
1. Canon Architect: Documenteer requirements
   → Output: requirements.md
2. Code Generator: Implementeer requirements
   → Input: requirements.md
   → Output: source code
3. Test Agent: Valideer implementatie
   → Input: source code
   → Output: test-rapport.md
4. Publisher: Publiceer documentatie
   → Input: requirements.md + test-rapport.md
   → Output: HTML documentatie
```

Dit beschrijft *wat* er moet gebeuren, maar niet *hoe* het gecontroleerd wordt of *onder welke voorwaarden* elke stap mag draaien.

## Definitie: Pipeline

Een **pipeline** is de operationalisatie van een workflow met controle, herhaalbaarheid en kwaliteitsgates. Het beschrijft:
- **Hoe**: Op welke manier stappen worden uitgevoerd (sequentieel, parallel, retry-logica)
- **Controle**: Welke validaties en gates tussen stappen zitten
- **Herhaalbaarheid**: Hoe dezelfde workflow elke keer hetzelfde resultaat geeft
- **Kwaliteitsgates**: Wanneer stopt de pipeline (failures, warnings, blockers)

Een pipeline is **operationeel**: het maakt de workflow uitvoerbaar en beheersbaar. Het is concreet en technisch.

### Voorbeeld pipeline (voor bovenstaande workflow)
```
Pipeline: requirements-to-docs

Uitvoeringsketen:
1. Canon Architect: Documenteer requirements (sequential)
   → Geschatte duur: 10 min
   → Output: requirements.md
   
   [GATE: Validatie]
   - Check: requirements.md bestaat
   - Check: requirements.md bevat verplichte secties
   - Failure actie: Stop pipeline
   
2. Code Generator: Implementeer requirements (sequential)
   → Input: requirements.md
   → Output: source code in /src
   
   [GATE: Syntax validatie]
   - Check: Code compileert zonder fouten
   - Failure actie: Stop pipeline
   
3. Test Agent: Valideer implementatie (sequential)
   → Input: source code
   → Output: test-rapport.md
   
   [GATE: Test coverage]
   - Check: > 80% test coverage
   - Check: 0 failing tests
   - Failure actie: Stop pipeline
   
4. Publisher: Publiceer documentatie (sequential)
   → Input: requirements.md + test-rapport.md
   → Output: HTML documentatie in /dist
   
   [GATE: Review]
   - Check: Manual approval door lead
   - Failure actie: Stop pipeline

Foutafhandeling:
- Bij failure in stap 1-3: Stop pipeline, rapporteer fout
- Bij failure in stap 4: Optioneel retry (max 2x)

Rollback strategie:
- Bij kritieke fout in stap 4: Herstel vorige versie documentatie
```

Dit beschrijft *hoe* de workflow draait, met expliciete gates en controles.

## Het verschil

| Aspect | Workflow | Pipeline |
|--------|----------|----------|
| **Focus** | Intentie en logica | Uitvoering en controle |
| **Abstractie** | Conceptueel (wat + waarom) | Concreet (hoe + onder welke voorwaarden) |
| **Stabiliteit** | Relatief stabiel (doel verandert zelden) | Verandert met tooling/requirements |
| **Lezer** | Product owners, stakeholders | Engineers, operators |
| **Vraag** | "Welke stappen zijn nodig?" | "Hoe zorgen we dat het werkt?" |
| **Output** | Workflow-diagram, stappen-lijst | Pipeline-configuratie, gates, scripts |
| **Kwaliteit** | Logische consistentie, volledigheid | Herhaalbaarheid, meetbare gates |

## Analogie met BPMN en traditionele processen

### BPMN als workflow
In traditionele business process management wordt **BPMN (Business Process Model and Notation)** gebruikt om processen te modelleren. Een BPMN-diagram is een **workflow**:
- Het toont *wat* er gebeurt (taken, events, gateways)
- Het toont *waarom* (business logic, beslisregels)
- Het toont *wanneer* (sequence flows, parallel gateways)
- Het is intentioneel en conceptueel

**Voorbeeld**: Een BPMN-diagram voor "Order fulfillment":
```
Start → Ontvang order → Controleer voorraad → [Gateway: Voorraad OK?]
  → Ja: Verzend order → Update systeem → End
  → Nee: Bestel bij leverancier → Wacht op levering → Verzend order → End
```

Dit is de workflow: de intentionele structuur.

### Process orchestration als pipeline
Wanneer je een BPMN-proces gaat **uitvoeren** met een orchestration engine (bijv. Camunda, jBPM), bouw je een **pipeline**:
- Je definieert *hoe* taken worden uitgevoerd (service calls, APIs, scripts)
- Je definieert *controles* (business rules, validations)
- Je definieert *foutafhandeling* (retries, compensatie, escalatie)
- Je definieert *monitoring* (KPIs, SLAs, alerts)

**Voorbeeld**: Camunda BPMN-implementatie voor "Order fulfillment":
```xml
<serviceTask id="checkInventory" implementation="##WebService">
  <extensionElements>
    <camunda:inputOutput>
      <camunda:inputParameter name="orderId">${orderId}</camunda:inputParameter>
    </camunda:inputOutput>
    <camunda:retry>3</camunda:retry>
    <camunda:timeout>PT30S</camunda:timeout>
  </extensionElements>
</serviceTask>

<businessRuleTask id="validateOrder">
  <extensionElements>
    <camunda:decisionRef>order-validation-rules</camunda:decisionRef>
  </extensionElements>
</businessRuleTask>
```

Dit is de pipeline: de operationalisatie met controle, retries, timeouts, en business rules.

### Parallel in agentische systemen

| Traditioneel (BPMN) | Agentisch (Workflow + Pipeline) |
|---------------------|----------------------------------|
| **BPMN-diagram** (workflow) | **Workflow-document** (stappen, afhankelijkheden) |
| **Orchestration engine config** (pipeline) | **Pipeline-document** (gates, execution modes) |
| **Service tasks** (uitvoering) | **Agent invocations** (agent calls) |
| **Business rules** (gates) | **Kwaliteitsgates** (validaties, gates) |
| **Compensation** (rollback) | **Rollback strategie** (undo, herstel) |
| **Monitoring dashboards** (observability) | **Trace artifacts** (temp/ logs) |

### Waarom het verschil belangrijk is

In traditionele BPMN-wereld zie je vaak:
1. **Workflow = BPMN-diagram** (intentie)
2. **Pipeline = Orchestration config** (uitvoering)

Maar vaak worden deze gemengd: BPMN-diagrammen worden overbelast met technische details (timeouts, retries), waardoor de intentie onduidelijk wordt.

In agentische systemen maken we het expliciet:
1. **Workflow Architect ontwerpt de workflow** (intentie blijft zuiver)
2. **Pipeline wordt afgeleid van workflow** (operationalisatie is apart)
3. **Artefact-flow koppelt beiden** (data stroomt door de structuur)

Dit zorgt voor:
- **Helderheid**: Intentie en uitvoering zijn gescheiden
- **Flexibiliteit**: Workflow blijft stabiel, pipeline kan veranderen (andere tooling, andere gates)
- **Herbruikbaarheid**: Zelfde workflow, verschillende pipelines (dev/test/prod met verschillende gates)

## Praktisch voorbeeld: Multi-agent documentatie

### Workflow (intentie)
```
Taak: Genereer complete documentatie voor nieuwe feature

Stappen:
1. Requirements Agent: Schrijf functionele requirements
2. Architecture Agent: Ontwerp technische architectuur
3. Code Generator: Implementeer code
4. Test Agent: Valideer implementatie
5. Documentation Agent: Schrijf gebruikersdocumentatie
6. Publisher: Publiceer alles naar website

Afhankelijkheden:
- Stap 2 wacht op stap 1 (requirements eerst)
- Stap 3 wacht op stap 2 (architectuur eerst)
- Stap 4 wacht op stap 3 (code eerst)
- Stap 5 kan parallel met stap 4 (docs onafhankelijk)
- Stap 6 wacht op stap 4 EN stap 5 (alles klaar)
```

### Pipeline (operationalisatie)
```
Pipeline: feature-to-website

Execution mode: Sequential met 1 parallelle sectie

Stap 1: Requirements Agent (sequential)
  → Run: python scripts/requirements-agent.py --feature "X"
  → Output: docs/requirements/feature-x.md
  [GATE: Requirements completeness]
    - Check: Bevat secties: Context, Functioneel, Non-functioneel
    - Check: Minimaal 500 woorden
    - Failure: Stop pipeline, notify owner

Stap 2: Architecture Agent (sequential)
  → Run: python scripts/architecture-agent.py --requirements "feature-x.md"
  → Output: docs/architectuur/feature-x-design.md
  [GATE: Architecture review]
    - Check: C4 diagrammen aanwezig
    - Check: Trade-offs gedocumenteerd
    - Failure: Stop pipeline, notify architect

Stap 3: Code Generator (sequential)
  → Run: python scripts/code-generator.py --design "feature-x-design.md"
  → Output: src/feature-x/
  [GATE: Code quality]
    - Check: Linting passed
    - Check: No security vulnerabilities (snyk)
    - Failure: Stop pipeline, log errors

Stap 4 en 5: Parallel execution
  → [4a] Test Agent (parallel)
    - Run: python scripts/test-agent.py --code "feature-x/"
    - Output: docs/test-reports/feature-x-tests.md
    [GATE: Test coverage]
      - Check: > 80% coverage
      - Check: 0 failing tests
      - Failure: Stop pipeline
  
  → [4b] Documentation Agent (parallel)
    - Run: python scripts/docs-agent.py --feature "feature-x.md"
    - Output: docs/user-docs/feature-x-guide.md
    [GATE: Docs quality]
      - Check: Minimaal 1000 woorden
      - Check: Screenshots aanwezig
      - Failure: Warning (continue), log issue

Stap 6: Publisher (sequential, na 4a EN 4b)
  → Run: python scripts/publisher.py --docs "feature-x-*"
  → Output: dist/website/feature-x.html
  [GATE: Manual approval]
    - Check: Lead approval required
    - Failure: Stop pipeline, await approval

Foutafhandeling:
- Gate failure in stap 1-3: Stop direct, geen volgende stappen
- Gate failure in stap 4a (tests): Stop direct, kritiek
- Gate failure in stap 4b (docs): Continue met warning
- Gate failure in stap 6: Wacht op manual retry

Rollback:
- Bij failure na stap 6: Herstel vorige website versie
- Bij failure in stap 3-5: Verwijder gegenereerde bestanden
```

### Waarom beide nodig zijn

**Workflow** (bovenste voorbeeld):
- Product owner begrijpt *wat* er gebeurt
- Stakeholders zien logische flow
- Verandert alleen bij nieuwe feature-requirements

**Pipeline** (onderste voorbeeld):
- Engineers weten *hoe* het draait
- Operators kunnen monitoren en troubleshooten
- Verandert bij nieuwe tooling, strengere gates, of performance optimalisatie

Ze zijn complementair: workflow zonder pipeline is niet uitvoerbaar, pipeline zonder workflow is niet begrijpelijk.

## Conclusie

Een **workflow** definieert de intentionele structuur van werk: welke stappen, in welke volgorde, met welke afhankelijkheden. Het is conceptueel en stabiel.

Een **pipeline** operationaliseert die structuur met controle, herhaalbaarheid en kwaliteitsgates: hoe stappen draaien, onder welke voorwaarden, met welke foutafhandeling. Het is concreet en veranderlijk.

Deze scheiding is analoog aan BPMN (workflow = BPMN-diagram, pipeline = orchestration config). Door intentie en uitvoering te scheiden blijven beide hanteerbaar:
- Workflows blijven toegankelijk voor niet-technische stakeholders
- Pipelines blijven flexibel voor technische optimalisatie

In agentische systemen wordt deze scheiding expliciet gemaakt door de **Workflow Architect**, die workflows, pipelines en artefact-flows als aparte artefacten ontwerpt.

## Referenties

- BPMN 2.0 Specification: [https://www.omg.org/spec/BPMN/2.0/](https://www.omg.org/spec/BPMN/2.0/)
- Camunda BPMN Implementation Guide: [https://docs.camunda.org/](https://docs.camunda.org/)
- Martin Fowler on Workflow Patterns: [https://martinfowler.com/articles/workflow.html](https://martinfowler.com/articles/workflow.html)

---

**Metadata**:
- **Canonical document**: Ja (core concept voor agentische systemen)
- **Revisie frequentie**: Bij nieuwe inzichten in workflow/pipeline patterns
- **Gerelateerde documenten**: 
  - `governance/rolbeschrijvingen/workflow-architect.md` (agent die dit implementeert)
  - `.github/prompts/workflow-architect-*.prompt.md` (contracten)
- **Tags**: workflow, pipeline, BPMN, orchestration, multi-agent

**Versiehistorie**:
- v1.0 (2026-01-13): Eerste versie, basis definitie en BPMN-analogie
