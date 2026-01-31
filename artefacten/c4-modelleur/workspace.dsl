workspace {
    model {
        user = person "Gebruiker" {
            description "Owner, Software engineer, architect, product owner die opdrachten geeft aan het agent ecosysteem"
        }
        githubStandards = softwareSystem "GitHub Standards" {
            description "Container: Standaarden, regels, charters, Git Repository"
        }
        agentCapabilities = softwareSystem "GitHub Agent-Capabilities" {
            description "Extensie: Agentmodellen en prompts, Git Repository"
        }
        projectWorkspace = softwareSystem "Project Workspace" {
            description "Extensie: gegenereerde artefacten per project, Git Repository"
        }
        llmProvider = softwareSystem "LLM Provider" {
            description "Externe systeem: Claude, GPT-4 - AI inference"
        }
        github = softwareSystem "GitHub" {
            description "Extern systeem: Code repository, standards repository"
        }
        agentEcosysteem = softwareSystem "Agent Ecosysteem" {
            description "Gegeoverend netwerk van AI-agents voor software delivery"
        }
        user -> agentCapabilities "Activeert agent\n(Via prompt)"
        agentCapabilities -> llmProvider "Gebruik voor inferentie\n(API)"
        agentCapabilities -> projectWorkspace "Schrijft/leest artefacten\n(Via VC)"
        agentCapabilities -> githubStandards "Leest charters en regels\n(Via VC)"
        githubStandards -> github "Gepubliceerd in standards repo"
        projectWorkspace -> github "Gepubliceerd in project repo"
        githubStandards -> projectWorkspace "Gepubliceerd in standards repo"
        projectWorkspace -> agentCapabilities "Gepubliceerd in project repo"
        llmProvider -> projectWorkspace "Semantische zoeken, validatie, cross-referencing\n(API)"

        // C1-relaties
        user -> agentEcosysteem "Geeft opdracht (s5 regels)\n[Natural language]"
        agentEcosysteem -> user "Levert artefacten\n[Markdown, code]"
        agentEcosysteem -> llmProvider "Gebruikt voor inferentie\n[API]"
        agentEcosysteem -> github "Leest standards, persisteert output\n[Git]"
    }

    views {
        systemContext agentCapabilities {
            include *
            autolayout lr
            title "C4 Contextdiagram - Agent Ecosysteem"
        }
        systemContext agentEcosysteem {
            include *
            autolayout lr
            title "C1 - System context"
        }
    }
}
theme default