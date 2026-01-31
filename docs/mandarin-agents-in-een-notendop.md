# Mandarin Agents in een Notendop

**Doel**: Snel overzicht van alle agent-soorten, hun kenmerken en onderlinge relaties

---

## Agent-soorten Overzicht

| **Agent-soort** | **Output** | **Impact** | **Fase-binding** | **Templates vereist** | **Voorbeeld** |
|-----------------|------------|------------|------------------|-----------------------|---------------|
| **Adviserende agent** | Informatie, advies | Geen structurele wijziging | Ja (1+ fasen) | Nee | Analyse-agent, Adviesagent |
| **Uitvoerende agent** | Artefacten | Duurzame wijziging workspace | Ja (1+ fasen) | Ja | Code-generator, Modelleur |
| ↳ **Ecosysteem uitvoerende agent** | Governance-artefacten | Wijzigt ecosysteem-structuur | Ja (1+ fasen) | Ja | Constitutioneel Auteur, Canon Curator |
| ↳ **Waarde uitvoerende agent** | Waarde-artefacten | Wijzigt value stream output | Ja (1+ fasen) | Ja | Feature-analist, Service-architect |
| **Beheeragent** | Workspace-wijzigingen | Runtime/configuratie | Nee (alle fasen) | Nee | Moeder agent |
| **Utility agent** | Ondersteunende diensten | Generiek, orthogonaal | Nee (orthogonaal) | Variabel | Format-vertaler, Publicatie-agent |

---

## Fase-binding en Value Streams

### Value stream agents
- **Adviserende agents** en **uitvoerende agents** zijn expliciet toegekend aan 1+ value stream fasen
- Produceren waarde, governance of inzicht binnen hun toegekende fase(n)
- Mogen niet buiten hun toegekende fase(n) opereren

### Beheeragents
- Opereren in **alle fasen** van alle value streams
- Wijzigen workspace-structuur, configuratie of runtime
- Leveren geen waarde-artefacten of governance-artefacten

### Utility agents
- Staan **orthogonaal** op value stream structuur
- Geen fase-binding, willekeurig inzetbaar
- Leveren ondersteunende diensten over meerdere contexten

---

## Artefact-types per Agent-soort

| **Agent-soort** | **Artefact-type** | **Voorbeeld** |
|-----------------|-------------------|---------------|
| **Adviserende agent** | Geen (ephemeral output) | Tekstuele adviezen, analyses |
| **Ecosysteem uitvoerende agent** | Governance-artefacten | Agent-charters, policies, templates |
| **Waarde uitvoerende agent** | Waarde-artefacten | Code, modellen, specificaties |
| **Beheeragent** | Configuratie/runtime | .gitignore, folders, containers |
| **Utility agent** | Ondersteunende artefacten | Geformatteerde documenten, publicaties |

---

## Conceptuele Hiërarchie
