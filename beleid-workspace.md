# Beleid voor de [WORKSPACE_NAAM] workspace

Deze workspace hoort bij de waardestroom **[VALUE_STREAM_NAAM]** **[VALUE_STREAM_CODE]**.

## Verplichte leesvolgorde van grondslagen

Elke geautomatiseerde rol, agent of runner hanteert bij aanvang van zijn functioneren de volgende verplichte leesvolgorde:

**In de centrale canon repository** (`https://github.com/hans-blok/mandarin-canon.git`):
1. `grondslagen/.algemeen/constitutie.md`
2. overige algemene grondslagen binnen `grondslagen/.algemeen/`
3. grondslagen van de expliciet toegewezen value stream

**In deze workspace**:
4. workspace-specifiek beleid (dit bestand)

Het overslaan, herordenen of impliciet toepassen van deze leesvolgorde is niet toegestaan.

**Zonder aantoonbare toepassing van de constitutie is handelen ongeldig.**

## Dit beleid is workspace-specifiek

Dit beleid beschrijft alleen de workspace-specifieke scope. Voor alle regels, uitzonderingen, details en constitutionele bepalingen volgen we volledig de richtlijnen in `hans-blok/mandarin-canon`.

De constitutie, algemene regels en governance voor alle workspaces staan in:
- https://github.com/hans-blok/mandarin-canon.git

## Canon Repository Synchronisatie

In alle geautomatiseerde en handmatige processen wordt de centrale canon repository geraadpleegd. Dit gebeurt altijd eerst met een `git pull` om te waarborgen dat de meest recente grondslagen worden gebruikt.

**Foutmelding**: Wanneer de mandarin-canon-repository niet bereikbaar is of niet kan worden gevonden, wordt een foutmelding gegeven en stopt het proces.

## Charter & Template Repository Configuratie

Deze workspace gebruikt externe agents uit de `mandarin-agents` repository. Charters en templates blijven in die repository; alleen prompts en agent-contracten worden hier gefetcht.

```yaml
external_agent_resources:
  # Primaire agent repository (schaalt automatisch voor alle agents)
  agent_repository:
    type: github  # Gebruik 'github' voor productie, 'local' voor development
    base_url: https://raw.githubusercontent.com/hans-blok/mandarin-agents/main/artefacten
    # BELANGRIJK: base_url is niet direct browseable, maar wordt gebruikt als prefix
    # voor individuele charter- en template-paden. Bijvoorbeeld:
    # {base_url}/aod/aod.02.core-framework-architect/core-framework-architect.charter.md
    # {base_url}/aod/aod.02.core-framework-architect/templates/core-framework-architect.structureer-gedrag.template.md
    
    # Voor lokale development (comment out base_url en gebruik):
    # type: local
    # local_path: ../mandarin-agents/artefacten
  
  # Pad-conventies (gebruikt door run_prompt.py om resources te vinden)
  # Variabelen: {vs} = value stream code, {fase} = fase nummer, {agent} = agent naam, {intent} = intent naam
  conventions:
    charter: "{vs}/{vs}.{fase}.{agent}/{agent}.charter.md"
    template: "{vs}/{vs}.{fase}.{agent}/templates/{agent}.{intent}.template.md"
  
  # Alleen uitzonderingen hier definiëren (optioneel)
  # Gebruik dit alleen voor agents die afwijken van de standaard pad-conventies
  exceptions: {}
    # voorbeeld:
    # legacy-agent:
    #   charter_path: special/path/legacy-agent.charter.md
    #   templates:
    #     legacy-intent: special/path/legacy.template.md
```

**Voorbeeld resource-opbouw voor agent `core-framework-architect` met `value_stream_fase: aod.02` en `intent: structureer-gedrag`:**
- Parse: `vs=aod`, `fase=02`, `agent=core-framework-architect`, `intent=structureer-gedrag`
- Charter pad via conventie: `aod/aod.02.core-framework-architect/core-framework-architect.charter.md`
- Template pad via conventie: `aod/aod.02.core-framework-architect/templates/core-framework-architect.structureer-gedrag.template.md`
- Volledige URLs:
  - Charter: `{base_url}/aod/aod.02.core-framework-architect/core-framework-architect.charter.md`
  - Template: `{base_url}/aod/aod.02.core-framework-architect/templates/core-framework-architect.structureer-gedrag.template.md`

**Development workflow:**
1. **Lokaal ontwikkelen**: Zet `type: local` en gebruik `local_path: ../mandarin-agents/artefacten`
2. **Na commit**: Zet `type: github` en gebruik `base_url` naar main branch

Nieuwe agents die de conventies volgen hoeven niet geconfigureerd te worden!

## Scope

### Wat we in deze workspace vastleggen

De Mandarin Architecture workspace beschrijft en publiceert de architectuur van het ecosysteem door de normerende kaders, structuren en samenhang expliciet vast te leggen. De workspace bevat de canon, metamodel-afspraken en structurerende modellen die inzicht geven in hoe het systeem is opgebouwd en functioneert. Zij biedt een consistente en beredeneerbare bron voor begrip, communicatie en verdere uitwerking van het architectuurlandschap. De workspace neemt geen implementatiebesluiten, maar maakt structuur, regels en werking transparant.

### Wat niet in deze workspace hoort

Andere domeinen vallen buiten deze workspace en horen in andere repositories. Voorbeelden hiervan zijn:

- Solution-architecturen en implementatieontwerpen (bijv. API-contracten, technische designs, deploymentconfiguraties)
- Operationele documentatie en beheerprocedures (runbooks, monitoring-instructies, incidentprocessen)
- Product- en projectartefacten zoals backlogitems, user stories, roadmaps en planningen

## Workspace-specifieke aanvullingen

- Documentatie is conceptueel en architecturaal van aard en gebruikt consistente terminologie conform de canon en het metamodel
- Artefacten worden gestructureerd volgens vaste viewpoints en volgen de afgesproken naamgeving en modelleringconventies
- Wijzigingen zijn herleidbaar via versiebeheer, met expliciete rationale en verwijzing naar gerelateerde principes of modellen

---

*Laatste update: 15 februari 2026 door Hans Blok*
