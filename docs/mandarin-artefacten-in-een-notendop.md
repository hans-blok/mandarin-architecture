# Mandarin-artefacten in een notendop

**Mandarin-artefacten** zijn duurzame, expliciete en overdraagbare vastleggingen van resultaat of besluitvorming binnen het Mandarin-ecosysteem. Deze artefacten dragen waarde en kunnen als input dienen voor vervolgwerk. Dit document geeft een overzicht van de artefactclassificatie en hoe artefacten zich tot elkaar verhouden.

## Artefactclassificatie

Mandarin-artefacten worden geclassificeerd in **vier hoofdklassen**, waarbij de normerende klasse twee specialisaties kent:


| Aspect | Governance-artefact |
|--------|---------------------|
| **Ontstaat in** | Value stream 0 (Ecosysteem Ontwikkeling) |
| **Scope** | Ecosysteem-breed |
| **Doel** | Besturing en continuïteit ecosysteem |
| **Normerend voor** | Het ecosysteem zelf |
| **Voorbeelden** | Agent-charter, agent-contract, prompt, template, workspace-state, handoff-document |

**Governance-artefacten**:
- Maken governance en besturing van het ecosysteem mogelijk
- Zijn randvoorwaardelijk voor alle andere value streams
- Leveren geen directe waarde in waarde value streams
- Zijn operationeel en faciliterend voor het ecosysteem

**Analogie**: Vergelijkbaar met API contracts, infrastructuurdefinities, configuration files in DevOps.

#### 1.2 Richtinggevende artefacten

**Richtinggevende artefacten** (synoniem: **value-stream-artefacten**) leggen expliciet de gewenste inhoud, structuur of randvoorwaarden van een **value stream fase** in een **waarde value stream** vast (value streams 1-n).

| Aspect | Richtinggevend artefact |
|--------|------------------------|
| **Ontstaat in** | Waarde value streams (1-n) |
| **Scope** | Specifieke value stream fase |
| **Doel** | Richting geven aan realisatie |
| **Normerend voor** | Value stream fase inhoud |
| **Voorbeelden** | Requirements, ontwerpdocumenten, solution outlines, logische datamodellen, API-richtlijnen |

**Richtinggevende artefacten**:
- Vertegenwoordigen inhoudelijke keuzes, richting en gewenste resultaten
- Zijn input voor volgende fasen en voor realiserende artefacten
- Worden geleverd door uitvoerende mandarin-agents met inhoudelijke verantwoordelijkheid
- Zijn primair artefacten (niet afgeleid)

**Analogie**: Vergelijkbaar met business requirements, solution outlines, logical data models in DDD.

---

## 2. Realiserende artefacten

### Definitie
Een **realiserend artefact** realiseert direct gedrag, structuur of configuratie in een werkend systeem op basis van richtinggevende artefacten.

### Kernkenmerken
- Uitvoerbaar, interpreteerbaar of direct toepasbaar door tooling
- Realiseert beslissingen uit richtinggevende artefacten
- Niet zelf normerend, maar volgt normerende artefacten
- Wijzigingen hebben direct effect op systeemgedrag of data
- Kan gegenereerd of handmatig gemaakt zijn

### Voorbeelden
- PostgreSQL-DDL (CREATE TABLE, CONSTRAINTS, etc.)
- Angular-code of andere frontend/backend-code
- Seed-scripts voor databases
- Infrastructure-as-code (Terraform, Ansible, Kubernetes manifests)

### Relatie met andere artefacten
Realiserende artefacten vormen de **brug tussen richtinggevende artefacten en het werkende systeem**. Zij maken de bedoelde structuur en het gewenste gedrag feitelijk waar in code, data en configuratie.

**Analogie**: Vergelijkbaar met gecompileerde of interpreteerbare artefacten die in productie draaien in softwareontwikkeling.

---

## 3. Beschrijvende artefacten

### Definitie
Een **beschrijvend artefact** biedt inzicht, uitleg of overzicht over bestaande structuren, besluiten of situaties, zonder zelf normerend, governerend of waardevol in een value stream fase te zijn.

### Kernkenmerken
- Biedt inzicht en uitleg
- Descriptief (beschrijft wat is)
- Niet bindend of prescriptief
- Kan afgeleid zijn uit andere artefacten
- Ondersteunt begripsvorming en communicatie

### Voorbeelden
- Overzichtsdocumenten
- Analyse-rapporten
- Conceptuele modellen (ter uitleg)
- Architectuurvisies
- Rationale-documenten (waarom-uitleg)
- Kennisbankartikelen

### Doel
Beschrijvende artefacten helpen mensen het ecosysteem te begrijpen. Zij zijn vaak afgeleid uit normerende, governance- of richtinggevende artefacten en zijn **ondersteunend, niet bindend**.

**Analogie**: Vergelijkbaar met white papers, explanatory documents, vision documents in enterprise architectuur.

---

## 4. Documenterende artefacten

### Definitie
Een **documenterend artefact** legt kennis, structuren of besluiten vast in een formele, toegankelijke vorm (inclusief model-gebaseerde beschrijvingen zoals ArchiMate), bedoeld voor duurzame raadpleegbaarheid en kennisoverdracht.

### Kernkenmerken
- Legt kennis en structuren formeel vast
- Bedoeld voor duurzame raadpleegbaarheid
- Kan model-gebaseerd zijn (bijv. ArchiMate, UML)
- Kan afgeleid of gegenereerd zijn uit andere artefacten
- Ondersteunt kennisoverdracht en onderhoud

### Voorbeelden
- Technische documentatie
- Gebruikershandleidingen
- ArchiMate-modellen (documenterende variant)
- UML-diagrammen (documenterende variant)
- API-documentatie (gegenereerd)
- Release notes
- Geëxporteerde visualisaties

### Modellen als documentatie
**Model-gebaseerde beschrijvingen** (zoals ArchiMate) worden gezien als documenterende artefacten: zij leggen structuur vast, maar zijn **uitleg, niet waarheid**. Deze indeling scheidt betekenis van vorm en maakt tooling verwisselbaar.

**Analogie**: Vergelijkbaar met technical documentation, reference manuals, generated docs, Javadoc, Swagger/OpenAPI specs.

---

## Overzicht van artefactklassen

| Klasse | Bindend | Primair | Doel | Ontstaat in |
|--------|---------|---------|------|-------------|
| **Normerend** | ✓ | ✓ | Normen vastleggen | Max. 1 value stream fase |
| → Governance | ✓ | ✓ | Ecosysteem-besturing | Value stream 0 |
| → Richtinggevend | ✓ | ✓ | Value stream richting | Value streams 1-n |
| **Realiserend** | – | – | Gedrag realiseren | N.v.t. |
| **Beschrijvend** | – | – | Inzicht bieden | N.v.t. |
| **Documenterend** | – | – | Kennis vastleggen | N.v.t. |

