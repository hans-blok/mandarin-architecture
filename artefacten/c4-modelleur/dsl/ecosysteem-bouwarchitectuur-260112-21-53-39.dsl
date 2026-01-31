workspace "Ecosysteem Bouwarchitectuur" "Context- en containermodel van de ecosysteem-bouwketen (EBA) op basis van de canon." {

    model {

        person aiAgenticSystemDeveloper "AI Agentic System Developer" "Ontwerpt en evolueert het agentische ecosysteem; schrijft en beheert agent-capabilities charters en stuurt de end-to-end bouw- en evolutiecyclus." {
            tags "Person"
        }

        person canonArchitect "Canon Architect" "Bewaakt de canon en ontwerpt architectuurkaders voor de bouwketen." {
            tags "Person"
        }

        softwareSystem eba "Ecosysteem Bouwketen (EBA)" "Bouwketen die met LLM’s, charters, runners, workflows en governance het agentische ecosysteem ontwerpt, genereert en evolueert." {
            tags "Software System"

            container orchestrator "Orchestrator Script (make-agent.py)" "Hoofdentrypoint dat charters ophaalt, buildplans aanmaakt, generators aanstuurt en resultaten wegschrijft in de juiste mappen." "Python" {
                tags "Container"
            }

            container generators "Generators & Runners" "LLM-gestuurde generators en runners die rolbeschrijvingen, prompts, runners en workflow-definities produceren." "Python, LLM API" {
                tags "Container"
            }

            container buildplanStore "Buildplan & Traceability Store" "Bestanden (bijv. JSON/YAML) waarin per agent wordt vastgelegd: bron-charter, LLM-calls/parameters en gegenereerde artefacten." "Files" {
                tags "Container", "Database"
            }

            container governanceLayer "Governance & Standaarden (werkruimte)" "Lokale governance-documenten en standaarden die de bouwketen kaderen (beleid, gedragscode, workspace-/agent-standaard)." "Markdown" {
                tags "Container"
            }

            container ciCdWorkflows "CI/CD Workflows" "Workflow-definities (bijv. GitHub Actions of GitLab CI) die de bouwketen automatisch uitvoeren." "YAML" {
                tags "Container"
            }
        }

        // Ecosysteemcontext: agent-capabilities + standards + project workspaces
        softwareSystem agentCapabilitiesRepo "Agent-capabilities repository" "Repository met agent-charters, templates en generator-bronnen." {
            tags "Software System", "Extern"
        }

        softwareSystem standardsRepo "Standards repository" "Repository met standaarden, beleid en normerende kaders voor het ecosysteem." {
            tags "Software System", "Extern"
        }

        softwareSystem projectWorkspaces "Project workspace(s)" "Concrete werkruimtes waar het ecosysteem (of deel daarvan) wordt toegepast, opgebouwd en onderhouden." {
            tags "Software System", "Extern"
        }

        softwareSystem canonRepo "Canon-repository" "Git-repository met canon-documenten en referentie-architecturen voor agentische systemen." {
            tags "Software System", "Extern"
        }

        softwareSystem llmPlatform "LLM-platform(en)" "Meerdere LLM-diensten (bijv. Claude, Gemini, GPT) die via API’s worden aangeroepen vanuit generators en runners." {
            tags "Software System", "Extern"
        }

        softwareSystem ciCdPlatform "CI/CD-platform" "CI/CD-platform (bijv. GitHub Actions of GitLab CI) dat workflows van de bouwketen uitvoert." {
            tags "Software System", "Extern"
        }

        // Relaties (bewust na alle element-definities)
        aiAgenticSystemDeveloper -> eba "Initieert en stuurt de evolutie van het ecosysteem via issues en charters" "Issues, charters"
        canonArchitect -> eba "Levert canon-documenten en architectuurkaders voor de bouwketen" "Canon, architectuur"

        aiAgenticSystemDeveloper -> agentCapabilitiesRepo "Schrijft/actualiseert charters en templates" "Git"
        canonArchitect -> canonRepo "Schrijft/actualiseert canon-documenten" "Git"

        eba -> canonRepo "Leest en schrijft canon-documenten" "Git"
        eba -> agentCapabilitiesRepo "Leest charters, templates en generator-bronnen" "Git"
        eba -> standardsRepo "Leest standaarden en beleid" "Git"
        eba -> projectWorkspaces "Levert/actualiseert artefacten in werkruimtes" "Files/Git"

        // Container-level relaties
        aiAgenticSystemDeveloper -> orchestrator "Start en configureert (re)builds" "CLI"

        orchestrator -> agentCapabilitiesRepo "Leest charters/templates" "Git"
        orchestrator -> standardsRepo "Leest standaarden/beleid" "Git"
        orchestrator -> canonRepo "Leest/schrijft canon" "Git"
        orchestrator -> buildplanStore "Schrijft buildplans en traceability" "Files"
        orchestrator -> generators "Stuurt generators/runners aan" "Script-calls"
        orchestrator -> ciCdWorkflows "Genereert/wijzigt workflows" "Files"
        orchestrator -> projectWorkspaces "Schrijft resultaten weg" "Files/Git"

        generators -> buildplanStore "Verrijkt buildplans met LLM-details" "Files"
        generators -> llmPlatform "Roept LLM’s aan" "HTTPS/API"

        ciCdWorkflows -> ciCdPlatform "Worden uitgevoerd door" "Pipelines"
        ciCdPlatform -> orchestrator "Triggert runs" "Events"
    }

    views {
        systemContext eba "EBA-Context" "Contextdiagram van de ecosysteem-bouwketen (EBA) binnen de ecosysteemcontext." {
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
