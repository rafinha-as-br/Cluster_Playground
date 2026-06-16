# Cluster_Playground V.0.0.0
Playground dedicado para Sistemas de distribuição e concorrência
# Cluster engine
Uma engine Dart capaz de simular eventos baseado em tickets que permite visualizar, manipular e experimentar cenários computacionais em tempo real. 
# Modulos
## Módulo 1 — RPC e Comunicação
Não planejado ainda
## Módulo 2 — Buffer e Filas
Um módulo que exibe de forma prática em dois diferentes cenários, um dedicado apenas para demonstração de buffer e outro para filas, onde é possível customizar o cenário, colocando, retirando ou editando o/a buffer/fila e entre outros valores, e dentro de cada cenário, contendo algumas cenas pré-definidas.
Neste módulo, existe um ambiente sandbox que simula cada um dos atores dos sistemas propostos, sendo eles: Produtor, Requisição, Response, Buffer, Fila e Servidor.
## Módulo 3 — Concorrência
Não planejado ainda 
## Módulo 4 — Sincronização
Não planejado ainda
## Módulo 5 — Problemas Clássicos
Não planejado ainda
# Arquitetura do projeto
```
lib/
├── app/                # Configurações principais (Theme, Locale, Routes, Bootstrap)
├── core/                
|   ├── cluster Engine/ # Engine da simulação
│   |   
│   └── Services/       # Services do projeto (shared prefs etc..)
├── features/           
│   ├── module_1/       # Módulo 1 — RPC e Comunicação
│   ├── module_2/       # Módulo 2 — Buffer e Filas
│   ├── module_3/       # Módulo 3 — Concorrência
│   ├── module_4/       # Módulo 4 — Sincronização
│   └── module_5/       # Módulo 5 — Problemas Clássicos
└── l10n/               # Internacionalização
```

# Milestones planejadas

| Versão | Marco |
| --- | --- |
| `v0.0.1` | Cluster Engine - Sistema de tick |
| `v0.0.2`  | Cluster Engine - Sistema de entidades |
| `v0.0.3` | Cluster Engine - Sistema de simulação |
| `v0.0.4` | Cluster Engine - Sistema visual |
| `v0.0.5` | Cluster Engine - Sistema de eventos |
| `v0.0.6` | Cluster Engine - Sistema de calendário de eventos |
| `v0.0.7` | Cluster Engine - Sistema de recursos |