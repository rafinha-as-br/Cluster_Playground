# Cluster Engine 
Engine Dart de simulação baseado em ticks 

# Arquitetura
```
core/
└── cluster_engine/
    │
    ├── cluster_engine.dart
    │   # Ponto de entrada público da engine.
    │   # Exporta as principais classes para o restante da aplicação.
    │
    ├── engine/
    │   │
    │   ├── simulation_engine.dart
    │   │   # Núcleo da engine.
    │   │   # Controla ciclo de vida, start, pause, stop e update.
    │   │
    │   ├── simulation_loop.dart
    │   │   # Responsável pelo loop principal da simulação.
    │   │
    │   ├── tick_controller.dart
    │   │   # Gerencia ticks por segundo (TPS).
    │   │
    │   └── simulation_clock.dart
    │       # Relógio interno da simulação.
    │       # Mantém tick atual e tempo simulado.
    │
    ├── entities/
    │   │
    │   ├── sim_entity.dart
    │   │   # Classe base de qualquer elemento simulável.
    │   │
    │   ├── entity_id.dart
    │   │   # Identificador único das entidades.
    │   │
    │   └── entity_registry.dart
    │       # Registro central de entidades ativas.
    │
    ├── state/
    │   │
    │   ├── simulation_state.dart
    │   │   # Estado global da simulação.
    │   │
    │   ├── simulation_snapshot.dart
    │   │   # Captura do estado em determinado tick.
    │   │
    │   └── state_store.dart
    │       # Armazenamento e acesso ao estado.
    │
    ├── events/
    │   │
    │   ├── simulation_event.dart
    │   │   # Evento base da engine.
    │   │
    │   ├── event_bus.dart
    │   │   # Distribuição de eventos entre entidades.
    │   │
    │   └── event_dispatcher.dart
    │       # Encaminha eventos para os destinos corretos.
    │
    ├── scheduler/
    │   │
    │   ├── scheduler.dart
    │   │   # Agenda execuções futuras.
    │   │
    │   ├── scheduled_task.dart
    │   │   # Representa uma tarefa agendada.
    │   │
    │   └── tick_queue.dart
    │       # Fila de tarefas aguardando execução.
    │
    ├── context/
    │   │
    │   └── simulation_context.dart
    │       # Contexto compartilhado entregue às entidades.
    │       # Permite acesso seguro à engine.
    │
    ├── scenarios/
    │   │
    │   ├── simulation_scenario.dart
    │   │   # Contrato base para cenários.
    │   │
    │   └── scenario_loader.dart
    │       # Responsável por carregar cenários na engine.
    │
    ├── resources/
    │   │
    │   ├── resource.dart
    │   │   # Classe base para recursos compartilhados.
    │   │
    │   └── resource_registry.dart
    │       # Registro global de recursos da simulação.
    │
    ├── visualization/
    │   │
    │   ├── viewport_state.dart
    │   │   # Estado visual associado à entidade.
    │   │
    │   ├── position.dart
    │   │   # Coordenadas da entidade no canvas.
    │   │
    │   └── dimensions.dart
    │       # Tamanho e área ocupada pela entidade.
    │
    ├── diagnostics/
    │   │
    │   ├── simulation_logger.dart
    │   │   # Logs da engine.
    │   │
    │   ├── tick_metrics.dart
    │   │   # Métricas de execução dos ticks.
    │   │
    │   └── performance_monitor.dart
    │       # Monitoramento de desempenho.
    │
    └── utils/
        │
        ├── constants.dart
        │   # Constantes globais da engine.
        │
        ├── typedefs.dart
        │   # Tipagens reutilizáveis.
        │
        └── extensions.dart
            # Extensions compartilhadas pela engine.
``` 

# Funcionamento
