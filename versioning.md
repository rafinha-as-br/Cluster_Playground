## Estrutura de Branches

### Branches principais

- `main` — código estável; representa releases prontas
- `develop` — branch de integração; todo trabalho converge aqui antes de ir para `main`

### Branches de suporte

| Tipo | Padrão de nome | Origem | Destino |
| --- | --- | --- | --- |
| Feature | `feature/<modulo>/<descricao>` | `develop` | `develop` |
| Fix | `fix/<modulo>/<descricao>` | `develop` | `develop` |
| Release | `release/<versao>` | `develop` | `main`  • `develop` |
| Hotfix | `hotfix/<descricao>` | `main` | `main`  • `develop` |

## Convenção de Commits (Conventional Commits)

```
<tipo>(<escopo>): <descrição curta>
```

### Tipos permitidos

| Tipo | Uso |
| --- | --- |
| `feat` | Nova funcionalidade |
| `fix` | Correção de bug |
| `refactor` | Refatoração sem mudança de comportamento |
| `style` | Formatação, espaçamento, lint |
| `test` | Adição ou ajuste de testes |
| `docs` | Documentação |
| `chore` | Build, config, dependências |
| `perf` | Melhoria de performance |

### Escopos por módulo

| Escopo | Módulo |
| --- | --- |
| `m1` | Módulo 1 — RPC e Comunicação |
| `m2` | Módulo 2 — Buffer e Filas |
| `m3` | Módulo 3 — Concorrência |
| `m4` | Módulo 4 — Sincronização |
| `m5` | Módulo 5 — Problemas Clássicos |
| `app` | Infraestrutura |
| `ce`  | Cluster Engine |
| `se` | Services |

## Versionamento

`MAJOR.MINOR.PATCH`

- **MAJOR** — módulo novo completo entregue
- **MINOR** — fase ou subfuncionalidade entregue
- **PATCH** — bugfix ou ajuste pontual