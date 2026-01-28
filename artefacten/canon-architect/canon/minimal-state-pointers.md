# Minimal State Pointer – Working Sketch

> Doel: **werkend krijgen vóór perfectioneren**.
> Deze schets definieert een *lichte* state-architectuur die performance-vriendelijk is en later verdiept kan worden.

---

## 1. Ontwerpprincipe

* **State is een pointer, geen kopie**
  State bevat *verwijzingen* (paths, ids), geen inhoud.

* **Workspace is de data**
  De inhoud (spec, code, docs) leeft in de workspace.

* **State borgt leesrichting**
  State zegt: *wat moet je lezen om correct verder te gaan?*

* **Geen fetch-per-agent**
  Remote synchronisatie is een expliciete fase-actie, niet impliciet agentgedrag.

---

## 2. Minimale state-structuur (v1)

```yaml
# state.current.yaml
state_version: 1

workspace:
  root: .
  active_branch: feature/012-example
  base_commit: a1b2c3d4   # commit waarop deze state is gebaseerd

inputs:
  spec:
    path: specs/012-example/spec.md
    hash: 9f8e7d          # optioneel, snelle wijzigingsdetectie

  governance:
    standards_version: 2025.01

outputs:
  last_agent:
    name: specify
    timestamp: 2026-01-15T10:42:00Z

handoff:
  next_intended:
    agent: plan
    mode: advisory        # advisory | required
```

**Kenmerken**

* Klein bestand (enkele KB’s)
* Volledig lokaal
* Snel te lezen en te schrijven

---

## 3. Lees- en schrijfregels (simpel gehouden)

### Lezen (door een agent)

1. Lees `state.current.yaml`
2. Gebruik **alleen** de paden/ids die daarin genoemd zijn
3. Lees vervolgens de echte inhoud uit de workspace

> Agenten *redeneren nooit* over “wat waarschijnlijk de juiste file is”.

### Schrijven (na agent-run)

1. Update `outputs.last_agent`
2. Update alleen relevante pointers (bijv. nieuwe spec-path)
3. Overschrijf state atomisch (geen merges)

---

## 4. Freshness zonder fetch

In v1:

* **Geen automatische fetch**
* `base_commit` is leidend
* Als iets extern gewijzigd is → *mens of runner detecteert dit*

Later (v2/v3) kun je toevoegen:

* `freshness_guard: local | remote-checked`
* `checked_at: timestamp`

Maar **niet nu**.

---

## 5. Handoffs in deze schets

* In state:

  * Alleen **intentie** (`next_intended`)
  * Geen afdwinging

* In charter:

  * Welke handoffs *structureel* bestaan

* In prompt:

  * Optioneel: UX-suggesties

> State verbindt *momenten*, charters verbinden *rollen*, prompts sturen *gedrag*.

---

## 6. Wat dit expliciet níet doet (bewust)

* Geen versiegeschiedenis van state
* Geen conflict-resolutie
* Geen parallelle agent-coördinatie
* Geen remote-synchronisatie

Dit is **v1: voldoende om correct te werken**, niet om alles te regelen.

---

## 7. Evolutiepaden (later)

* State-snapshots per fase
* Immutable state + append-only log
* Automatische inconsistentie-detectie
* Policy-gestuurde freshness checks

Maar pas **nadat het werkt**.

---

## 8. Canonieke samenvatting

> *Gebruik state om leesrichting te fixeren, niet om werkelijkheid te dupliceren.*

Dit maakt het systeem:

* snel
* begrijpelijk
* uitbreidbaar
* en governance-vriendelijk zonder zwaarte
