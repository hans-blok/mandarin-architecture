# Mandarin-artefacten in een notendop

**Mandarin-artefacten** zijn duurzame, expliciete en overdraagbare vastleggingen van resultaat of besluitvorming die waarde vertegenwoordigen binnen het Mandarin-ecosysteem.

## Tweedimensionale artefactclassificatie

Artefacten worden geordend langs **twee orthogonale assen**:

### 1. Artefact-functie-as: *Welke functie vervult het artefact?*

| Positie | Bindend | Primair | Ontstaat in | Functie | Voorbeelden |
|---------|---------|---------|-------------|---------|-------------|
| **Normerend** | ✓ | ✓ | Max. 1 VS-fase | Normen vastleggen | Zie specialisaties ↓ |
| → **Governance** | ✓ | ✓ | VS 0 | Ecosysteem-besturing | Agent-charter, prompt, template, workspace-state |
| → **Richtinggevend** | ✓ | ✓ | VS 1-n | VS-richting geven | Requirements, ontwerp, logisch model, API-richtlijnen |
| **Realiserend** | – | – | N.v.t. | Gedrag realiseren | DDL, code, IaC, seed-scripts |
| **Beschrijvend** | – | – | N.v.t. | Inzicht bieden | Analyse-rapporten, architectuurvisies, rationale |
| **Documenterend** | – | – | N.v.t. | Kennis vastleggen | Technische docs, handleidingen, ArchiMate, API-docs |
| **Afgeleid** | – | – | N.v.t. | Afgeleid van andere artefacten | Gegenereerde API-docs, views, samenvattingen |

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
|--------|---------------------|-------------------------|
| **Ontstaat in** | Value stream 0 (Ecosysteem) | Value streams 1-n (Waarde) |
| **Scope** | Ecosysteem-breed | Value stream fase |
| **Normerend voor** | Het ecosysteem zelf | Value stream inhoud |
| **Functie** | Besturing en continuïteit | Richting en randvoorwaarden |
| **Faciliterend** | Ja (randvoorwaardelijk) | Nee (waardevol) |
| **Afgeleid** | Nee (primair) | Nee (primair) |

## Tweedimensionale positionering: voorbeelden

Een artefact heeft **twee dimensies**: functie én representatievorm.

| Artefact | Artefact-functie-as | Representatievorm-as | Toelichting |
|----------|---------------------|----------------------|-------------|
| Constitutie | Normerend (Governance) | Tekstueel | Ecosysteem-norm in natuurlijke taal (bijv. Markdown) |
| Requirements-spec | Normerend (Richtinggevend) | Gestructureerd | VS-norm in parseerbaar formaat (bijv. JSON, YAML) |
| PostgreSQL-DDL | Realiserend | Machine-leesbaar | Implementeert structuur, direct uitvoerbaar |
| ArchiMate-diagram | Beschrijvend | Model-gebaseerd + Visueel | Visualiseert architectuur ter uitleg |
| API-documentatie | Afgeleid / Documenterend | Tekstueel + Gestructureerd | Afgeleid uit code, documenteert kennis |
| Analyse-rapport | Beschrijvend | Tekstueel | Biedt inzicht zonder te normeren |

## Waarom tweedimensionale classificatie?

| Voordeel | Toelichting |
|----------|-------------|
| **Scheidt betekenis van vorm** | Functie (betekenis) blijft constant, ongeacht representatievorm |
| **Houdt governance scherp** | Governance-artefacten ontstaan alleen in VS 0, richtinggevend in VS 1-n |
| **Erkent modellen als uitleg** | ArchiMate en UML zijn beschrijvend/documenterend, niet normerend |
| **Maakt tooling verwisselbaar** | Classificatie onafhankelijk van formaat of implementatie |
| **Verbindt met value streams** | Helder waar artefacten ontstaan (artefact-functie-as) |
| **Zichtbaar primair vs afgeleid** | Afgeleid is expliciete positie op artefact-functie-as |
| **Ondersteunt representatie-transformatie** | Zelfde functie in meerdere vormen (bijv. tekst → diagram) |

## Leidende vragen bij classificatie

Twee vragen bepalen de positie van een artefact:

1. **Artefact-functie-as**: *Welke normerende, realiserende, beschrijvende, documenterende of afgeleide functie heeft dit artefact in het ecosysteem?*
2. **Representatievorm-as**: *In welke vorm wordt de betekenis uitgedrukt (tekstueel, gestructureerd, visueel, machine-leesbaar, model-gebaseerd)?*

**Voorbeeld classificatie**:
- **Constitutie**: Normerend (Governance) × Tekstueel
- **DDL-script**: Realiserend × Machine-leesbaar
- **ArchiMate-model**: Beschrijvend × Model-gebaseerd + Visueel

---

**Zie ook**: [Mandarin-agents in een notendop](mandarin-agents-in-een-notendop.md) voor relatie tussen agents en artefacten.

**Bronnen**: [Conceptuele grondslagen](conceptuele-grondslagen.md) • [Ordeningsconcepten](mandarin-ordeningsconcepten.md) • [Domeinconcepten](mandarin-domeinconcepten.md)
