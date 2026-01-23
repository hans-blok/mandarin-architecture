# Mandarin Architecture

<p align="center">
  <img src="docs/mandarin-logo.png" alt="Mandarin Logo" width="200"/>
</p>

Een architecturale introductie tot agent-gebaseerde systemen, met aandacht voor principes, structuur, governance en de ondersteunende technologielaag.

## Over dit project

Mandarin Architecture documenteert de architectuur en governance van een agent-gebaseerd systeem waarin AI-agents samenwerken volgens heldere contracten, grenzen en verantwoordelijkheden. Het project dient als referentie-implementatie voor het bouwen van betrouwbare, onderhoudbare agent-ecosystemen.

## Kernprincipes

- **Contract-gedreven**: Agents werken volgens expliciete input/output contracten
- **Grenzen bewaken**: Elke agent heeft een duidelijke capability boundary
- **Governance first**: Besluitvorming en verantwoordelijkheden zijn formeel vastgelegd
- **Value stream alignment**: Agents ondersteunen specifieke waardestromen (kennispublicatie, architectuur, development)
- **Technologie als enabler**: Tooling en runners ondersteunen maar bepalen niet de architectuur

## Structuur

```
mandarin-architecture/
├── charters-agents/          # Agent charters (rollen, grenzen, contracten)
├── .github/prompts/          # Prompt templates per agent
├── scripts/                  # Runner scripts en tooling
├── docs/                     # Architectuurdocumentatie
└── governance/              # Beleid, doctrine, gedragscode (indien aanwezig)
```

## Agents

Deze workspace bevat agents voor verschillende value streams:

- **Utility agents**: Algemeen toepasbaar (python-expert, moeder, docker-steward, layout-optimizer)
- **Kennispublicatie**: Agents voor schrijven en publiceren (essayist, heraut, artikel-schrijver, vertaler)
- **Architectuur**: Modelleurs en ontwerpers (c4-modelleur, archimate-modelleur)
- **Development**: Pipeline en workflow automation (pipeline-executor, workflow-architect)

## Agents ophalen

Agents worden opgehaald uit het [mandarin-agents](https://github.com/hans-blok/mandarin-agents) repository:

```cmd
# Fetch utility agents
fetch-agents utility

# Fetch agents voor specifieke value stream
fetch-agents kennispublicatie

# Toon beschikbare value streams
fetch-agents --list
```

Het `fetch-agents` script:
- Haalt de laatste versie op via Git
- Organiseert charters, prompts en runners in de workspace
- Logt alle operaties naar `logs/`
- Vervangt runner modules volledig (geen merge)

## Governance

De governance van dit systeem is gebaseerd op:

1. **Charters**: Definiëren rol, grenzen en verantwoordelijkheden per agent
2. **Prompts**: Contract-specificaties (input, output, foutafhandeling)
3. **Doctrine**: Fundamentele principes en ontwerpbeslissingen
4. **Beleid**: Operationele regels en processen

Agents escaleren buiten hun grenzen naar:
- **Moeder**: Voor workspace-ordening en structuur
- **Constitutioneel Auteur**: Voor governance wijzigingen (indien beschikbaar)
- **Mens**: Voor fundamentele architectuurbeslissingen

## Technologielaag

### Runners
Python scripts die herhaalbare taken automatiseren zonder AI-interactie:
- `moeder.py`: Workspace ordening, Git operaties, governance validatie
- `fetch_mandarin_agents.py`: Agent distribution vanuit centrale repository

### Prompts
Gestructureerde templates met:
- Expliciete input/output contracten
- Foutafhandeling specificaties
- Escalatie-triggers
- Verwijzingen naar charters en governance

### Tooling
- `fetch-agents.bat`: Windows wrapper voor agent distribution
- Git: Versiebeheer en synchronisatie
- Python 3.9+: Runtime voor runners en scripts

## Architectuurprincipes

1. **Separation of concerns**: Agents hebben niet-overlappende verantwoordelijkheden
2. **Fail-safe defaults**: Bij twijfel escaleren, niet gokken
3. **Explicit over implicit**: Contracten en grenzen zijn formeel vastgelegd
4. **Traceability**: Alle beslissingen zijn herleidbaar naar governance
5. **Modularity**: Agents zijn onafhankelijk en vervangbaar

## Ontwikkeling

### Nieuwe agent toevoegen
1. Definieer charter in `charters-agents/`
2. Schrijf prompts in `.github/prompts/`
3. Implementeer runner (optioneel) in `scripts/`
4. Publiceer via [mandarin-agents](https://github.com/hans-blok/mandarin-agents)
5. Fetch in workspace met `fetch-agents`

### Workspace ordenen
```cmd
# Analyseer structuur (geen wijzigingen)
python scripts/moeder.py --check-only

# Orden workspace
python scripts/moeder.py --scope structure
```

## Referenties

- **Mandarin Agents Repository**: https://github.com/hans-blok/mandarin-agents
- **Canon (grondslagen)**: https://github.com/hans-blok/canon.git
- **Agent Charters**: Zie `charters-agents/` directory
- **Prompts**: Zie `.github/prompts/` directory

## Licentie

Zie individuele bestanden voor licentie-informatie.

---

**Versie**: 1.0  
**Laatst bijgewerkt**: 24 januari 2026  
**Onderhoud**: Via [mandarin-agents](https://github.com/hans-blok/mandarin-agents) distribution
