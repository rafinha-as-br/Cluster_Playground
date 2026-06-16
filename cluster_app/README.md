# Cluster App

Aplicativo Flutter web com o objetivo de demonstrar sistemas distribuídos e concorrência

# Arquitetura
```
lib/
├── app/                # Configurações principais (Theme, Locale, Routes, Bootstrap)
├── core/                
│   └── Services/       # Services do projeto (shared prefs etc..)
├── features/           
│   ├── module_1/       # Módulo 1 — RPC e Comunicação
│   ├── module_2/       # Módulo 2 — Buffer e Filas
│   ├── module_3/       # Módulo 3 — Concorrência
│   ├── module_4/       # Módulo 4 — Sincronização
│   └── module_5/       # Módulo 5 — Problemas Clássicos
└── l10n/               # Internacionalização
```