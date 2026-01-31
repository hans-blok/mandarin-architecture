workspace "Ecosysteem Bouwarchitectuur" "Context- en containermodel van de ecosysteem-bouwketen (EBA) op basis van de canon." {

    model {
        
        person ecosysteemDeveloper "Ecosysteem Developer" "Ontwerpt het ecosysteem, formuleert issues en charters en beoordeelt resultaten." {
            tags "Person"
        }

        person canonArchitect "Canon Architect" "Bewaakt de canon en ontwerpt architectuurkaders voor de bouwketen." {
            tags "Person"
        }

        softwareSystem eba "Ecosysteem Bouwketen (EBA)" "Bouwketen die met LLM’s, charters, runners, workflows en governance het agentische ecosysteem ontwerpt, genereert en evolueert." {
            tags "Software System"

            container orchestrator "Orchestrator Script (make-agent.py)" "Script dat charters ophaalt, buildplans aanmaakt, generators aanstuurt en resultaten wegschrijft in de juiste mappen." "Python" {
                tags "Container"
            }

            container generators "Generators & Runners" "LLM-gestuurde generators en runners die rolbeschrijvingen, prompts, runners en workflow-definities produceren." "Python, LLM API" {
                tags "Container"
            }

            container buildplanStore "Buildplan & Traceability Store" "Bestanden (bijv. JSON/YAML) met per agent de koppeling tussen bron-charter, LLM-calls en gegenereerde artefacten." "Files" {
                tags "Container", "Database"
            }

            container chartersCanon "Charters & Canon" "Data-container met agent-charters en canon-documenten als bron voor de bouwketen." "Markdown, tekstbestanden" {
                tags "Container", "Database"
            }

            container governanceLayer "Governance-lagen" "Bestanden met gedragscode, beleid en standaarden die kaders bieden voor de bouwketen." "Markdown" {
                tags "Container"
            }

            container ciCdWorkflows "CI/CD Workflows" "Workflow-definities (bijvoorbeeld GitHub Actions of GitLab CI) die de bouwketen automatisch uitvoeren." "YAML, pipelines" {
                tags "Container"
            }

            
            ecosysteemDeveloper -> orchestrator "Start en configureert de bouw van (nieuwe of aangepaste) agents" "CLI, scripts"
            canonArchitect -> chartersCanon "Maakt en onderhoudt canon-documenten en architectuurbeschrijvingen" "Markdown"

            orchestrator -> chartersCanon "Leest charters en canon als input voor de bouwketen" "Bestanden"
            orchestrator -> generators "Stuurt generators en runners aan met charters en canon" "Script-calls"
            orchestrator -> buildplanStore "Schrijft buildplans en traceability-informatie weg" "Bestanden"
            orchestrator -> ciCdWorkflows "Genereert of wijzigt workflow-definities" "Bestanden"

            generators -> buildplanStore "Verrijkt buildplans met details over LLM-calls en artefacten" "Bestanden"
            generators -> chartersCanon "Lezen canon en charters voor generatieve taken" "Bestanden"
            generators -> llmPlatform "Roept LLM’s aan voor generatieve voorstellen" "HTTPS/API"

            ciCdWorkflows -> ciCdPlatform "Worden uitgevoerd door het CI/CD-platform" "Pipelines"
            ciCdPlatform -> orchestrator "Triggert (her)uitvoering van bouwstappen op basis van repo-events" "Events"
        }

        softwareSystem canonRepo "Canon-repository" "Git-repository met canon-documenten en referentie-architecturen voor agentische systemen." {
            tags "Software System", "Extern"
        }

        softwareSystem agentCapabilitiesRepo "Agent-capabilities repository" "Repository met agent-charters, templates en generator-scripts." {
            tags "Software System", "Extern"
        }

        softwareSystem llmPlatform "LLM-platform" "Extern platform met LLM-diensten (bijvoorbeeld Claude, Gemini, GPT) die door de bouwketen worden aangeroepen." {
            tags "Software System", "Extern"
        }

        softwareSystem ciCdPlatform "CI/CD-platform" "CI/CD-platform (bijvoorbeeld GitHub Actions of GitLab CI) dat workflows van de bouwketen uitvoert." {
            tags "Software System", "Extern"
        }

        
        ecosysteemDeveloper -> eba "Initieert en stuurt de bouw van agents via issues en charters" "Issues, charters"
        canonArchitect -> eba "Levert canon-documenten en architectuurkaders voor de bouwketen" "Canon, architectuur"

        eba -> canonRepo "Leest en schrijft canon-documenten" "Git"
        eba -> agentCapabilitiesRepo "Leest agent-charters, templates en generator-scripts" "Git"
        eba -> llmPlatform "Stuurt generatieve verzoeken voor code, prompts, rolbeschrijvingen en workflows" "HTTPS/API"
        eba -> ciCdPlatform "Laat CI/CD-workflows uitvoeren voor genereren, testen en deployen" "Pipelines"
        
        ecosysteemDeveloper -> orchestrator "Start en configureert de bouw van (nieuwe of aangepaste) agents" "CLI, scripts"
        canonArchitect -> chartersCanon "Maakt en onderhoudt canon-documenten en architectuurbeschrijvingen" "Markdown"

        orchestrator -> chartersCanon "Leest charters en canon als input voor de bouwketen" "Bestanden"
        orchestrator -> generators "Stuurt generators en runners aan met charters en canon" "Script-calls"
        orchestrator -> buildplanStore "Schrijft buildplans en traceability-informatie weg" "Bestanden"
        orchestrator -> ciCdWorkflows "Genereert of wijzigt workflow-definities" "Bestanden"

        generators -> buildplanStore "Verrijkt buildplans met details over LLM-calls en artefacten" "Bestanden"
        generators -> chartersCanon "Lezen canon en charters voor generatieve taken" "Bestanden"
        generators -> llmPlatform "Roept LLM's aan voor generatieve voorstellen" "HTTPS/API"

        ciCdWorkflows -> ciCdPlatform "Worden uitgevoerd door het CI/CD-platform" "Pipelines"
        ciCdPlatform -> orchestrator "Triggert (her)uitvoering van bouwstappen op basis van repo-events" "Events"
    }

    views {
        systemContext eba "EBA-Context" "Contextdiagram van de ecosysteem-bouwketen (EBA) binnen zijn omgeving." {
            include *
              autoLayout lr
        }

        container eba "EBA-Containers" "Containermodel van de ecosysteem-bouwketen (EBA) met focus op hoofdonderdelen uit de canon." {
            include *
              autoLayout lr
        }

        styles {
            element "Person" {
                shape Person
            }
            element "Software System" {
                background "#1168bd"
                color "#ffffff"
            }
            element "Extern" {
                background "#999999"
            }
            element "Container" {
                background "#438dd5"
                color "#ffffff"
            }
            element "Database" {
                shape Cylinder
            }
        }
    }
}
