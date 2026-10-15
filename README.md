# Storingsmelder van Mathias Savat

Korte uitleg: wat doet de applicatie en welke database gebruikt ze (bv. Flask + PostgreSQL).

## Vereisten
- Docker en Docker Compose v2 (check met `docker --version` en `docker compose version`)
- Git

## Starten vanaf nul

1. Clone de repository
```bash
   git clone https://github.com/Amecy16/Cloud-computing.git
   cd Cloud-computing
   git switch --detach <commit-id>
```

2. Maak je eigen `.env` aan op basis van het voorbeeld
```bash
   cp .env.example .env
```

3. Vul de lege waardes in `.env` in (zelfde namen als in `.env.example`)
```bash
   nano .env
```
   Bijvoorbeeld: `DB_USER`, `DB_PASSWORD`, `DB_NAME`.

4. Bouw en start alles met één commando
```bash
   docker compose up -d --build
```

5. Controleer of alles draait
```bash
   docker compose ps
   docker compose logs -f
```

6. Open de applicatie op http://localhost:8000

## Data blijft bewaard na een herstart

De database gebruikt een named volume, dus data overleeft een herstart.

```bash
docker compose down        # stopt en verwijdert containers (volume blijft)
docker compose up -d       # opnieuw starten, data is er nog
```

## Stoppen en opruimen
```bash
docker compose down        # stoppen, data blijft
docker compose down -v     # stoppen EN data wissen (echt vanaf nul)
```