# Mandaryn Agents in een Notendop

**Doel**: Snel overzicht van mandaryn-agent-classificatie op basis van orthogonale assen

**Bron**: Gebaseerd op mandaryn-ordeningsconcepten.md en mandaryn-domeinconcepten.md

---

## Belangrijke Uitgangspunten

### Geen Enkelvoudige Labels
Mandaryn-agents worden **NIET** geclassificeerd als "adviserende agent" of "uitvoerende agent". In plaats daarvan worden ze gepositioneerd langs **4 orthogonale assen**. Deze assen beschrijven samen wat een agent doet, hoe hij werkt en waar hij inzetbaar is.

### De 4 Orthogonale Assen

Een mandaryn-agent heeft op elke as een expliciete positie:

1. **Inhoudelijke as** â€” Effect op betekenis
2. **Inzet-as** â€” Context van gebruik  
3. **Vorm-as** â€” Betekenis of representatie
4. **Werkingsas** â€” Inhoud of voorwaarden

---

## 1. Inhoudelijke As

**Vraag**: Wat is het effect van deze agent op de betekenis van het werk?

| **Positie** | **Betekenis** | **Timing** | **Voorbeeld** |
|------------|---------------|------------|---------------|
| **Beschrijvend** | Vastleggen, uitleggen, documenteren van bestaande werkelijkheid | **Achteraf** | Analyse-agent, Verslagagent |
| **Structuurrealisend** | Maken impliciete samenhang en relaties expliciet | Impliciet â†’ expliciet | Logisch datamodel-agent, Nummeragent |
| **Architectuur-structurerend** | InstantiÃ«ren samenhangend architectuurmodel binnen gestelde kaders | Volgens metamodel | ArchiMate-modelleur, C4-modelleur |
| **Structuur-normerend** | Normeren vooraf de structuur van toekomstig werk | **Vooraf**, value-stream-gebonden | Thema-vormende agent, Feature-beschrijver |
| **Curator** | Beschrijvend met expliciet oordeel of duiding | Beoordeling + escalatie | Review-agent, Samenhangbeoordelaar |
| **Ecosysteem-normerend** | Vaststellen/wijzigen regels en kaders van het ecosysteem | Meta-niveau, zwaar | Constitutie-agent, Doctrine-agent |

---

## 2. Inzet-As

**Vraag**: Waar mag deze agent worden ingezet?

| **Positie** | **Betekenis** | **Voorbeeld** |
|------------|---------------|---------------|
| **Value-stream-specifiek** | Inzetbaar binnen Ã©Ã©n value stream, vaak fase-gebonden | Feature-analist (analyse-fase), Service-architect (ontwerp-fase) |
| **Value-stream-overstijgend** | Inzetbaar over meerdere value streams heen | Format-vertaler, Publicatie-agent, Canon Curator |

---

## 3. Vorm-As

**Vraag**: Werkt deze agent op betekenis of alleen op vorm?

| **Positie** | **Betekenis** | **Voorbeeld** |
|------------|---------------|---------------|
| **Vormvast** | Output is betekenisdragend, begrijpt betekenis van het werk | Mandaryn-architect (werkt met concepten), Feature-analist |
| **Representatieomvormend** | Zet inhoud om van representatie naar representatie, betekenis-blind | Publicatie-agent (Markdownâ†’HTML), Format-vertaler |

---

## 4. Werkingsas

**Vraag**: Intervenieert deze agent in de inhoud of in de voorwaarden?

| **Positie** | **Betekenis** | **Voorbeeld** |
|------------|---------------|---------------|
| **Inhoudelijk** | Werkt direct op betekenisvolle artefacten | Feature-analist, Service-architect, alle categorieÃ«n van inhoudelijke as |
| **Conditioneel** | Werkt op voorwaarden en hygiÃ«ne, bewaak randvoorwaarden | Workspace Steward, Engineering Steward |

---

## Voorbeelden: Agents Gepositioneerd

### Agent: Canon Curator
- **Inhoudelijke as**: Curator (beoordelt kwaliteit en samenhang met expliciet oordeel)
- **Inzet-as**: Value-stream-overstijgend (werkt aan het ecosysteem zelf)
- **Vorm-as**: Vormvast (werkt met betekenis van concepten)
- **Werkingsas**: Inhoudelijk (produceert curator-rapporten en analyses)

### Agent: Publicatie-agent
- **Inhoudelijke as**: Beschrijvend (documenteert door publicaties te maken)
- **Inzet-as**: Value-stream-overstijgend (overal inzetbaar)
- **Vorm-as**: Representatieomvormend (transformeert Markdown naar HTML, PDF, etc.)
- **Werkingsas**: Inhoudelijk (produceert documenten)

### Agent: Workspace Steward
- **Inhoudelijke as**: Conditioneel ondersteunend (geen specifieke inhoudelijke positie)
- **Inzet-as**: Value-stream-overstijgend (beheert workspace-inrichting)
- **Vorm-as**: Vormvast (werkt met structuur en betekenis van workspace)
- **Werkingsas**: Conditioneel (beheert voorwaarden: structuur, beleid, scope, mappen)

### Agent: Feature-analist
- **Inhoudelijke as**: Beschrijvend (analyseert bestaande of voorgenomen features)
- **Inzet-as**: Value-stream-specifiek (analyse-fase)
- **Vorm-as**: Vormvast (werkt met betekenis)
- **Werkingsas**: Inhoudelijk (produceert analyse-documenten)

### Agent: ArchiMate-modelleur  
- **Inhoudelijke as**: Architectuur-structurerend (instantieert coherent architectuurmodel)
- **Inzet-as**: Value-stream-specifiek (ontwerp-fase)
- **Vorm-as**: Vormvast (werkt met architectuurbetekenis)
- **Werkingsas**: Inhoudelijk (produceert structuurmodellen)

---

## Artefacten per Agent-positie

### Beschrijvend â†’ Beschrijvende Artefacten
- Analyses, adviezen, overzichten van bestaande situaties

### Structuurrealisend â†’ Realiserende Artefacten  
- Logische datamodellen, expliciete relatie-modellen, nummeringsschema's
- Maken impliciete structuur expliciet zonder normatief te zijn

### Architectuur-structurerend â†’ Structurerende Artefacten
- ArchiMate-modellen, C4-modellen, domeinmodellen met coherente architectuurstructuur
- Volgens metamodellen, binnen gestelde kaders

### Structuur-normerend â†’ Richtinggevende Artefacten
- Themabeschrijvingen, feature-specificaties, value-stream-specifieke normen
- Normeren vooraf het werk binnen waarde value streams

### Curator â†’ Beschrijvende Artefacten (met oordeel)
- Review-rapporten, kwaliteitsbeoordelingen, samenhanganalyses
- Escalatie-adviezen, expliciete duiding

### Ecosysteem-normerend â†’ Governance-artefacten
- Constitutie, doctrines, agent-charters, ecosysteem-brede policies
- Meta-niveau normen voor het systeem zelf

---

## Governance per As-positie

### Value-stream-specifiek
- **Verplicht**: Agent-charter met expliciete fase-toekenning
- **Verplicht**: Agent-contract met duidelijke input/output per fase
- **Verplicht**: Templates voor output-artefacten

### Value-stream-overstijgend
- **Verplicht**: Agent-charter (zonder fase-toekenning)
- **Verplicht**: Agent-contract (generiek, breed inzetbaar)
- **Optioneel**: Templates (afhankelijk van output-type)

---

## Belangrijkste Verschillen met Oude Classificatie

| **Oud Systeem** | **Nieuw Systeem** |
|-----------------|-------------------|
| "Adviserende agent" = enkelvoudig label | Beschrijvend (inhoudelijke as) + expliciete posities op andere assen |
| "Uitvoerende agent" = enkelvoudig label | Structuurrealisend/Architectuur-structurerend/Structuur-normerend (inhoudelijke as) + specifieke posities op andere assen |
| "Beheeragent" = enkelvoudig label | Conditioneel (werkingsas) + value-stream-overstijgend (inzet-as) |
| Enkelvoudige "normerend" categorie | Onderscheid tussen Structuur-normerend (waarde value streams) en Ecosysteem-normerend (meta-niveau) |
| HiÃ«rarchische structuur | Orthogonale assen (geen hiÃ«rarchie) |
| Geen onderscheid architect/realisatie | Expliciet onderscheid Architectuur-structurerend vs Structuurrealisend |

---

## Gebruik in Praktijk

### Bij Ontwerp van een Nieuwe Agent
1. Bepaal positie op **Inhoudelijke as**: Wat is het effect op betekenis? (6 opties)
2. Bepaal positie op **Inzet-as**: Waar is deze agent inzetbaar? (value-stream-specifiek vs overstijgend)
3. Bepaal positie op **Vorm-as**: Werkt deze agent met betekenis of representatie?
4. Bepaal positie op **Werkingsas**: Werkt deze agent met inhoud of voorwaarden?

### Bij Governance-controle
- Check: Heeft elke agent een expliciete positie op alle 4 assen?
- Check: Is de agent-charter consistent met deze posities?
- Check: Zijn de templates en contracten afgestemd op de as-posities?
- Check: Voor ecosysteem-normerende agents: is de impact en zwaarte gerechtvaardigd?

### Bij Artefact-classificatie
- Gebruik **artefact-functie-as** om artefacten te positioneren: normerend (governance vs richtinggevend), realiserend, structurerend, beschrijvend, documenterend, afgeleid
- Combineer met **representatievorm-as** voor volledige classificatie

---

**Gebruik**: Dit document biedt een compact overzicht van de multi-dimensionale agent-classificatie. Voor volledige definities en kenmerken, zie:
- mandaryn-ordeningsconcepten.md (voor classificatie, assen en artefacten)
- mandaryn-domeinconcepten.md (voor agent-concepten en werkingsprincipes)

**Versie**: 3.0.0  
**Laatst bijgewerkt**: 2026-02-15  
**Auteur**: Canon Curator  
**Gebaseerd op**: mandaryn-ordeningsconcepten.md v1.9.0, mandaryn-domeinconcepten.md


