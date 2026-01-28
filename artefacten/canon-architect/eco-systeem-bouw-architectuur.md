# Architectuur van de Eco-systeem Bouwketen

## 1. Twee kernconcepten

Voor de canon onderscheiden we twee typen architectuur:

1. **Operationele Ecosysteemarchitectuur (OEA)**  
   Beschrijft hoe het *gerealiseerde* agentische ecosysteem issues oppakt en afhandelt.  
   Voorbeeld: een (eco-systeem)developer of product owner registreert een issue in een backlog; agents binnen het ecosysteem interpreteren het issue, voeren taken uit, actualiseren de status en verrijken het issue met resultaten.

2. **Ecosysteem Bouwarchitectuur (EBA)**  
   Beschrijft hoe we het ecosysteem zélf ontwerpen, genereren en evolueren met behulp van LLM’s, charters, runners, workflows en governance.  
   Dit document focust op deze **EBA**.

---

## 2. Doel van de Ecosysteem Bouwarchitectuur (EBA)

De EBA geeft een referentie-architectuur voor:

- Het **vertalen van intentie** (issues, charters, canon-afspraken) naar concrete agent-componenten.
- Het **gecontroleerd inzetten van LLM’s** (zoals Claude, Gemini, GPT) om code, prompts, rolbeschrijvingen en workflows te genereren.
- Het **borgen van traceerbaarheid en governance**: elke gegenereerde artefact heeft een herleidbaar charter, beleid en versie.

De EBA richt zich op herhaalbare, veilige en auditeerbare **evolutie van het ecosysteem**.

---

## 3. Hoofdrollen en context

- **AI Agentic System Developer**  
  Ontwerpt en evolueert het agentische ecosysteem. Schrijft en beheert niet alleen agent-capabilities charters, maar werkt ook aan samenhang, inrichting van repositories en workspaces, en aan de end-to-end bouw- en evolutiecyclus.

- **Canon Architect**  
  Bewaakt dat alle architectuurkeuzes passen binnen de canon (doel, scope, principes, grondhouding).

- **LLM-platform** (extern systeem)  
  Verzameling van LLM-diensten (Claude, Gemini, GPT, …) die via API’s worden aangeroepen vanuit runners en workflows.

- **Bronrepos**  
  - *Canon-repo*: deze repository met documentatie en referentie-architecturen.  
  - *Agent-capabilities repo*: bron van agent-charters, templates en generator-scripts.

### Wat is de context van de EBA?

De EBA staat niet in de context van één enkele repository. Het ecosysteem bestaat in deze canon uit drie samenhangende bouwstenen:

1. **Agent-capabilities repository**: charters, templates en generator-bronnen.
2. **Standards repository**: standaarden, beleid en normerende kaders.
3. **Project workspace(s)**: de concrete werkruimte(n) waar een ecosysteem (of deel daarvan) wordt toegepast, opgebouwd en onderhouden.

Samen vormen deze bouwstenen het ecosysteem waarbinnen de EBA het ontwerp- en bouwproces organiseert.

---

## 4. Kerncomponenten van de bouwketen

### 4.1 Charters en Canon

- **Agent Charters**  
  Gestructureerde beschrijvingen van wat een agent moet doen, met scope, grenzen en gedrag.

- **Canon-documenten**  
  Beschrijven principes, architectuurpatronen en grondhouding. De Canon Architect gebruikt deze om nieuwe charters en architecturen te valideren.

### 4.2 Generators en Runners

- **Charter Readers & Validators**  
  Lezen charters uit de agent-capabilities repo, controleren versie, status en compatibiliteit met de canon.

- **Generators (LLM-gestuurd)**  
  Runners die via het LLM-platform o.a. genereren:
  - rolbeschrijvingen (governance/rolbeschrijvingen/*.md),
  - prompts (.github/prompts/*.prompt.md),
  - runners (scripts/*.py),
  - workflow-definities (bijv. GitHub Actions / GitLab CI).

- **Buildplan & Traceability Store**  
  JSON/YAML-bestanden waarin per agent wordt vastgelegd:
  - bron-charter,
  - gebruikte LLM-call(s) en parameters,
  - gegenereerde artefacten en versies.

### 4.3 Workflows en Orchestratie

- **Orchestrator Script (bijv. make-agent.py)**  
  Hoofdentrypoint dat:
  - charters ophaalt,
  - buildplans aanmaakt,
  - specifieke generators (prompt-, runner-, pipeline-builder) aanstuurt,
  - resultaten wegschrijft in de juiste mappen.

- **CI/CD Workflows**  
  GitHub Actions / GitLab CI definities die de bouwketen automatisch uitvoeren bij:
  - nieuwe of aangepaste charters,
  - wijzigingen in canon of governance,
  - handmatige “regenereer deze agent”-triggers.

### 4.4 Governance-lagen

- **Gedragscode en beleid**  
  Bepalen wat wél en niet binnen scope is, inclusief taalniveau en veiligheid.

- **Standaarden**  
  - Workspace-standaard: mappenstructuur, naamgeving, waar resultaten terechtkomen.  
  - Agent-standaard: verplicht drieluik (rolbeschrijving, prompt, runner) per agent.

---

## 5. Samenwerking met LLM’s

LLM’s zijn in de EBA **externe, generatieve componenten**:

- In de context van het ecosysteem leveren **meerdere LLM’s** (mogelijk van verschillende aanbieders) input aan de bouwketen. Dit is een expliciet onderdeel van de EBA: het ecosysteem kan verschillende modellen inzetten voor verschillende taken of kwaliteitsprofielen.

- Ze ontvangen duidelijke, canon-gekaderde prompts (op basis van charters en beleid).
- Ze leveren voorstellen voor code en documenten terug, die:
  - door de generators worden gevalideerd (structuur, minimale checks),
  - door mensen (Ecosysteem Developer, Canon Architect) kunnen worden gereviewd.
- Elke LLM-call wordt idealiter gelogd in het buildplan voor audit en reproduceerbaarheid.

LLM’s **nemen geen governance over**: ze werken binnen de kaders van beleid, canon en standaarden.

---

## 6. Architectuur in één zin

De **Ecosysteem Bouwarchitectuur (EBA)** is een gelaagde architectuur waarin charters en canon-documenten, samen met LLM-gestuurde generators, runners en CI/CD-workflows, een gecontroleerde fabriek vormen voor het ontwerpen, genereren en evolueren van het agentische ecosysteem.

---

## 7. Voor de C4 Modelleur

Dit document is een **canoniek referentiepunt** voor de C4 Modelleur. Voor C4-diagrammen over de bouwketen geldt:

- De C4 Modelleur gebruikt dit document als **primaire tekstuele bron** voor context-, container- en componentdiagrammen van de EBA.
- Eventuele aanvullende C4-bronnen worden door de Canon Architect expliciet aangewezen en sluiten inhoudelijk aan op deze beschrijving.
