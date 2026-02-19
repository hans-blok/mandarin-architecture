# Mandaryn-artefacten in een notendop

**Mandaryn-artefacten** zijn duurzame, expliciete en overdraagbare vastleggingen van resultaat of besluitvorming die waarde vertegenwoordigen binnen het Mandaryn-ecosysteem.

## Tweedimensionale artefactclassificatie

Artefacten worden geordend langs **twee orthogonale assen**:

### 1. Artefact-functie-as: *Welke functie vervult het artefact?*

| Positie | Bindend | Primair | Ontstaat in | Functie | Voorbeelden |
|---------|---------|---------|-------------|---------|-------------|
| **Normerend** | âœ“ | âœ“ | Max. 1 VS-fase | Normen vastleggen | Zie specialisaties â†“ |
| â†’ **Governance** | âœ“ | âœ“ | VS 0 | Ecosysteem-besturing | Agent-charter, prompt, template, workspace-state |
| â†’ **Richtinggevend** | âœ“ | âœ“ | VS 1-n | Value Stream-richting geven | Requirements, ontwerp, logische modellen, API-richtlijnen |
| **Realiserend** | â€“ | âœ“ | N.v.t. | Gedrag realiseren | DDL, code, IaC, seed-scripts |
| **Structurerend** | â€“ | âœ“ | N.v.t. | Coherente architectuurstructuur | ArchiMate-modellen, UML-modellen, C4-modellen, domeinmodellen |
| **Beschrijvend** | â€“ | âœ“ | N.v.t. | Inzicht bieden | Analyse-rapporten, architectuurvisies, rationale |
| **Documenterend** | â€“ | Vaak afgeleid | N.v.t. | Kennis vastleggen | Technische docs, handleidingen, API-docs |
| **Afgeleid** | â€“ | â€“ | N.v.t. | Afgeleid van andere artefacten | Gegenereerde API-docs, views, samenvattingen |

**VS** = Value stream

### 2. Representatievorm-as: *Hoe wordt de betekenis uitgedrukt?*

| Representatievorm | Kenmerken | Voorbeelden |
|-------------------|-----------|-------------|
| **Tekstueel** | Natuurlijke taal, lineair | Markdown, docx, txt |
| **Gestructureerd** | Schema-gebaseerd, parseerbaar | JSON, YAML, XML |
| **Visueel** | Grafisch, diagrammatisch | PNG, SVG, draw.io |
| **Machine-leesbaar** | Direct interpreteerbaar door tooling | SQL DDL, Terraform, code |
| **Model-gebaseerd** | Formele metamodel-structuur | ArchiMate, UML, C4 |

**Principe**: Dezelfde functie kan in verschillende representatievormen bestaan zonder dat de positie op de artefact-functie-as verandert.

## Normerende artefacten: governance vs richtinggevend

| Aspect | Governance-artefact | Richtinggevend artefact |
|--------|--------------------|-------------------------|
| **Ontstaat in** | Value stream 0 (Ecosysteem) | Value streams 1-n (Waarde) |
| **Scope** | Ecosysteem-breed | Value stream fase |
| **Normerend voor** | Het ecosysteem zelf | Value stream inhoud |
| **Functie** | Besturing en continuÃ¯teit | Richting en randvoorwaarden |
| **Faciliterend** | Ja (randvoorwaardelijk) | Nee (waardevol) |
| **Afgeleid** | Nee (primair) | Nee (primair) |
| **Voorbeelden** | Agent-charter, prompts, templates | Requirements-spec, logische modellen, ontwerpdocumenten |

## Structurerend vs Beschrijvend vs Documenterend

| Aspect | Structurerend | Beschrijvend | Documenterend |
|--------|---------------|--------------|---------------|
| **Focus** | Coherente architectuurstructuur | Inzicht en uitleg | Formele kennisoverdracht |
| **Metamodel** | Volgt expliciet metamodel | Geen vereist metamodel | Kan model-gebaseerd zijn |
| **Coherentie** | Intern consistent geheel | Losse uitleg mogelijk | Gestructureerde kennisbasis |
| **Doel** | Architectuur expliciet maken | Begrip ondersteunen | Duurzame raadpleegbaarheid |
| **Voorbeelden** | ArchiMate-modellen, UML-klassendiagrammen, C4-modellen | Analyse-rapporten, conceptuele uitleg | Handleidingen, API-docs, geÃ«xporteerde modellen |

## Tweedimensionale positionering: voorbeelden

Een artefact heeft **twee dimensies**: functie Ã©n representatievorm.

| Artefact | Artefact-functie-as | Representatievorm-as | Toelichting |
|----------|---------------------|----------------------|-------------|
| Constitutie | Normerend (Governance) | Tekstueel | Ecosysteem-norm in natuurlijke taal (Markdown) |
| Agent-charter | Normerend (Governance) | Gestructureerd | Ecosysteem-besturing in parseerbaar formaat (YAML) |
| Requirements-spec | Normerend (Richtinggevend) | Gestructureerd | VS-norm in parseerbaar formaat (JSON/YAML) |
| PostgreSQL-DDL | Realiserend | Machine-leesbaar | Implementeert structuur, direct uitvoerbaar |
| ArchiMate-model | Structurerend | Model-gebaseerd + Visueel | Coherente architectuurstructuur volgens metamodel |
| Domeinmodel (UML) | Structurerend | Model-gebaseerd | Intern consistente structuur met relaties |
| C4-componentmodel | Structurerend | Visueel + Gestructureerd | Architectuurstructuur volgens C4-metamodel |
| Analyse-rapport | Beschrijvend | Tekstueel | Biedt inzicht zonder te normeren |
| API-documentatie | Documenterend (vaak Afgeleid) | Tekstueel + Gestructureerd | Formele kennisoverdracht, vaak gegenereerd |
| Gegenereerde modeldoc | Afgeleid + Documenterend | Tekstueel | Expliciet afgeleid uit andere artefacten |

## Waarom tweedimensionale classificatie?

| Voordeel | Toelichting |
|----------|-------------|
| **Scheidt betekenis van vorm** | Functie (betekenis) blijft constant, ongeacht representatievorm |
| **Houdt governance scherp** | Governance-artefacten ontstaan alleen in VS 0, richtinggevend in VS 1-n |
| **Onderscheidt structuurtypen** | Structurerend (metamodel-conform) vs beschrijvend (uitleg) vs documenterend (formeel) |
| **Erkent modellen als uitleg of structuur** | ArchiMate kan structurerend OF documenterend zijn, afhankelijk van intentie |
| **Maakt tooling verwisselbaar** | Classificatie onafhankelijk van formaat of implementatie |
| **Verbindt met value streams** | Helder waar artefacten ontstaan (artefact-functie-as) |
| **Zichtbaar primair vs afgeleid** | Afgeleid is expliciete positie op artefact-functie-as |
| **Ondersteunt representatie-transformatie** | Zelfde functie in meerdere vormen (bijv. tekst â†’ diagram) |

## Leidende vragen bij classificatie

Twee vragen bepalen de positie van een artefact:

1. **Artefact-functie-as**: *Welke normerende, realiserende, structurerende, beschrijvende, documenterende of afgeleide functie heeft dit artefact in het ecosysteem?*
2. **Representatievorm-as**: *In welke vorm wordt de betekenis uitgedrukt (tekstueel, gestructureerd, visueel, machine-leesbaar, model-gebaseerd)?*

**Voorbeeld classificatie**:
- **Constitutie**: Normerend (Governance) Ã— Tekstueel
- **Agent-charter**: Normerend (Governance) Ã— Gestructureerd  
- **Requirements-spec**: Normerend (Richtinggevend) Ã— Gestructureerd
- **DDL-script**: Realiserend Ã— Machine-leesbaar
- **ArchiMate-model**: Structurerend Ã— Model-gebaseerd + Visueel
- **Analyse-rapport**: Beschrijvend Ã— Tekstueel
- **API-documentatie**: Documenterend Ã— Tekstueel + Gestructureerd

### Onderscheidingsregels

**Structurerend vs Beschrijvend:**
- Structurerend = volgt expliciet metamodel + coherent geheel + architectuurelementen  
- Beschrijvend = geeft uitleg + inzicht + geen vereist metamodel

**Documenterend vs Beschrijvend:**  
- Documenterend = formele kennisoverdracht + duurzame raadpleegbaarheid
- Beschrijvend = begripsvormend + ondersteunend inzicht

**Governance vs Richtinggevend:**
- Governance = VS 0 (ecosysteem) + besturing + faciliterend
- Richtinggevend = VS 1-n (waarde) + inhoudelijke richting + waardevol

---

**Zie ook**: [Mandaryn-agents in een notendop](mandarin-agents-in-een-notendop.md) voor relatie tussen agents en artefacten.

**Bronnen**: [Mandaryn-ordeningsconcepten](mandarin-ordeningsconcepten.md) â€¢ [Mandaryn-domeinconcepten](mandarin-domeinconcepten.md)

**Versie**: 3.0.0  
**Laatst bijgewerkt**: 2026-02-15  
**Gebaseerd op**: mandarin-ordeningsconcepten.md v1.9.0

