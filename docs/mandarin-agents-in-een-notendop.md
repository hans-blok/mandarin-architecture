# Mandarin Agents in een Notendop

**Doel**: Snel overzicht van mandarin-agent-classificatie op basis van orthogonale assen

**Bron**: Gebaseerd op conceptuele-grondslagen.md, mandarin-ordeningsconcepten.md en mandarin-domeinconcepten.md

---

## Belangrijke Uitgangspunten

### Geen Enkelvoudige Labels
Mandarin-agents worden **NIET** geclassificeerd als "adviserende agent" of "uitvoerende agent". In plaats daarvan worden ze gepositioneerd langs **4 orthogonale assen**. Deze assen beschrijven samen wat een agent doet, hoe hij werkt en waar hij inzetbaar is.

### De 4 Orthogonale Assen

Een mandarin-agent heeft op elke as een expliciete positie:

1. **Inhoudelijke as** — Effect op betekenis
2. **Inzet-as** — Context van gebruik  
3. **Vorm-as** — Betekenis of representatie
4. **Werkingsas** — Inhoud of voorwaarden

---

## 1. Inhoudelijke As

**Vraag**: Wat doet deze agent met de betekenis/inhoud?

| **Positie** | **Betekenis** | **Voorbeeld** |
|------------|---------------|---------------|
| **Beschrijvend** | Legt inhoud uit, analyseert, adviseert | Analyse-agent, Adviesagent |
| **Normerend** | Legt regels en normen vast | Constitutioneel Auteur, Beleid-agent |
| **Structuur-normerend** | Bepaalt hoe het ecosysteem zelf is ingericht | Canon Curator |
| **Realiserend** | Produceert uitvoerbare code/configuratie | Code-generator, Infrastructure-as-Code agent |
| **Documenterend** | Maakt documentatie of modellen | Modelleur, Documentatie-agent |

---

## 2. Inzet-As

**Vraag**: In welke context is deze agent inzetbaar?

| **Positie** | **Betekenis** | **Voorbeeld** |
|------------|---------------|---------------|
| **Value-stream-specifiek** | Gebonden aan 1+ specifieke value stream fase(n) | Feature-analist (fase: analyse), Service-architect (fase: ontwerp) |
| **Value-stream-overstijgend** | Inzetbaar over meerdere value streams heen | Format-vertaler, Publicatie-agent, Moeder agent, Canon Curator |

---

## 3. Vorm-As

**Vraag**: Werkt deze agent met betekenis of met representatie?

| **Positie** | **Betekenis** | **Voorbeeld** |
|------------|---------------|---------------|
| **Vormvast** | Werkt met betekenis, begrijpt inhoud | Mandarin-architect (werkt met concepten), Feature-analist |
| **Representatieomvormend** | Transformeert alleen vorm, betekenis-blind | Publicatie-agent (Markdown→HTML), Format-vertaler |

---

## 4. Werkings-As

**Vraag**: Werkt deze agent met inhoud of met voorwaarden?

| **Positie** | **Betekenis** | **Voorbeeld** |
|------------|---------------|---------------|
| **Inhoudelijk** | Levert inhoudelijke output (tekst, modellen, code) | Feature-analist, Service-architect |
| **Conditioneel** | Beheert voorwaarden en runtime (configuratie, workspace-structuur) | Moeder agent, Docker-steward |

---

## Voorbeelden: Agents Gepositioneerd

### Agent: Mandarin-architect
- **Inhoudelijke as**: Beschrijvend (legt concepten uit)
- **Inzet-as**: Value-stream-overstijgend (werkt aan het ecosysteem zelf)
- **Vorm-as**: Vormvast (werkt met betekenis, niet met representatie)
- **Werkings-as**: Inhoudelijk (produceert concept-documenten)

### Agent: Publicatie-agent
- **Inhoudelijke as**: Documenterend (maakt publicaties)
- **Inzet-as**: Value-stream-overstijgend (overal inzetbaar)
- **Vorm-as**: Representatieomvormend (transformeert Markdown naar HTML, PDF, etc.)
- **Werkings-as**: Inhoudelijk (produceert documenten)

### Agent: Moeder agent
- **Inhoudelijke as**: Structuur-normerend (beheert workspace-structuur)
- **Inzet-as**: Value-stream-overstijgend (beheert workspace-inrichting over alle value streams)
- **Vorm-as**: Vormvast (werkt met structuur, niet representatie)
- **Werkings-as**: Conditioneel (beheert voorwaarden en configuratie)

### Agent: Feature-analist
- **Inhoudelijke as**: Beschrijvend (analyseert features)
- **Inzet-as**: Value-stream-specifiek (fase: analyse)
- **Vorm-as**: Vormvast (werkt met betekenis)
- **Werkings-as**: Inhoudelijk (produceert analyse-documenten)

---

## Artefacten per Agent-positie

### Normerend → Normerende Artefacten
- **Governance-artefacten**: Agent-charters, policies, constitutie
- **Richtinggevende artefacten**: Templates, standaarden voor value streams

### Beschrijvend → Beschrijvende Artefacten
- Analyses, adviezen, overzichten

### Realiserend → Realiserende Artefacten
- Code, configuratie, infrastructuur-definities

### Documenterend → Documenterende Artefacten
- Modellen, diagrammen, documentatie

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
| "Adviserende agent" = enkelvoudig label | Beschrijvend (inhoudelijke as) + value-stream-specifiek (inzet-as) + vormvast (vorm-as) + inhoudelijk (werkings-as) |
| "Uitvoerende agent" = enkelvoudig label | Normerend/Realiserend (inhoudelijke as) + specifieke posities op andere assen |
| "Beheeragent" = enkelvoudig label | Conditioneel (werkings-as) + value-stream-overstijgend (inzet-as) |
| Hiërarchische structuur (parent/child) | Orthogonale assen (geen hiërarchie) |

---

## Gebruik in Praktijk

### Bij Ontwerp van een Nieuwe Agent
1. Bepaal positie op **Inhoudelijke as**: Wat doet deze agent met betekenis?
2. Bepaal positie op **Inzet-as**: Waar is deze agent inzetbaar?
3. Bepaal positie op **Vorm-as**: Werkt deze agent met betekenis of representatie?
4. Bepaal positie op **Werkings-as**: Werkt deze agent met inhoud of voorwaarden?

### Bij Governance-controle
- Check: Heeft elke agent een expliciete positie op alle 4 assen?
- Check: Is de agent-charter consistent met deze posities?
- Check: Zijn de templates en contracten afgestemd op de as-posities?

---

**Gebruik**: Dit document biedt een compact overzicht van de multi-dimensionale agent-classificatie. Voor volledige definities en kenmerken, zie:
- mandarin-ordeningsconcepten.md (voor classificatie en assen)
- mandarin-domeinconcepten.md (voor agent-concepten)
- conceptuele-grondslagen.md (voor meta-concepten)

**Versie**: 2.0.0  
**Laatst bijgewerkt**: 2026-02-01  
**Auteur**: Canon Curator  
**Gebaseerd op**: conceptuele-grondslagen.md, mandarin-ordeningsconcepten.md, mandarin-domeinconcepten.md

