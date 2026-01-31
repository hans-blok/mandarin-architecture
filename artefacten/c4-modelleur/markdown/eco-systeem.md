# C1 - System context

Deze contextdiagram toont de interactie tussen vier hoofdcomponenten:

- **Gebruiker**  
  _Software engineer, architect, product owner die opdrachten geeft aan Mandarin_
  - Geeft opdracht voor oplossen issues (gestructureerd, in natuurlijke taal) aan Mandarin
  

- **Mandarin**  
  _Korps van AI-agents inclusief geautomatiseerde workflow voor software delivery_
  - Ontvangt opdrachten van de Gebruiker
  - Legt artefacten vast in de Project Workspace
  - Gebruikt de LLM Provider voor inferentie (API)
  - Leest standaarden uit **Mandarin Canon**  
  - Persisteert output naar GitHub

- **LLM Provider**  
  _Claude, GPT-4, Gemini, enz. - AI inference_
  - Wordt gebruikt door Mandarin voor inferentie

- **GitHub**  
  _Code repository, Mandarin Canon repository_
  - Wordt gebruikt door Mandarin om canon (doctrines, constitutie) te lezen en artefacten te persisteren

> De pijlen geven de richting van interactie en informatie-uitwisseling aan tussen de componenten.

---

# C2 - Containers

Dit containerdiagram toont de belangrijkste onderdelen (containers) binnen het Agent Ecosysteem en hun interacties:

- **Gebruiker**  
  Activeert een agent via prompt (via prompt)

- **GitHub Mandarin-Agents**  
  _Extensie: Agentmodellen en prompts, Git Repository_  
  - Leest charters en regels uit GitHub Mandarin Canon (via VC)
  - Schrijft/leest artefacten naar Project Workspace (via VC)
  - Wordt geactiveerd door de Gebruiker
  - Gebruikt LLM Provider voor inferentie (API)

- **GitHub Mandarin Canon**  
  _Container: Standaarden, regels, charters, Git Repository_  
  - Wordt gelezen door Mandarin-Agents
  - Gepubliceerd in Mandarin Canon repo (GitHub)
  - Gepubliceerd in Project Workspace

- **Project Workspace**  
  _Extensie: gegenereerde artefacten per project, Git Repository_  
  - Schrijft/leest artefacten met Mandarin-Agents
  - Persisteert artefacten (inclusief software) (GitHub)
  - Gepubliceerd in Mandarin Canon repo (GitHub Mandarin Canon)
  - Gebruikt LLM Provider voor inferentie (semantisch zoeken, validatie, cross-referencing (API)

- **LLM Provider**  
  _Externe systeem: Claude, GPT-4, Gemini, enz. - AI inference_  
  - Gebruikt door Mandarin-Agents en Project Workspace voor inferentie en validatie

- **GitHub**  
  _Extern systeem: Code repository, Mandarin Canon repository_  
  - Ontvangt gepubliceerde artefacten uit Project Workspace en Mandarin Canon

> De pijlen geven de richting van interactie en informatie-uitwisseling aan tussen de containers en externe systemen.

