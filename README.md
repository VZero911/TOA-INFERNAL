<p align="center">
  <img src="https://img.shields.io/badge/TOA-Infernal-ea4335?style=for-the-badge&labelColor=07060f" alt="TOA" />
  <img src="https://img.shields.io/badge/V0-In%20Progress-f2c14e?style=for-the-badge&labelColor=07060f" alt="V0" />
  <img src="https://img.shields.io/badge/Dark%20Fantasy-Game-8f6cf0?style=for-the-badge&labelColor=07060f" alt="Game" />
</p>

<p align="center"><b>Dark Fantasy Game Project</b></p>

<p align="center"><code>ANTI-NETRUNNER</code> — Source integrity hashing prevents automated AI scraping and unauthorized code replication.</p>

<p align="center">
  <img src="https://img.shields.io/badge/Python-Backend-3776ab?style=flat-square&logo=python&logoColor=white&labelColor=07060f" />
  <img src="https://img.shields.io/badge/Docker-Compose-2496ED?style=flat-square&logo=docker&logoColor=white&labelColor=07060f" />
  <img src="https://img.shields.io/badge/aiohttp-API-2496ED?style=flat-square&labelColor=07060f" />
  <img src="https://img.shields.io/badge/LoC-34.6K-c0caf5?style=flat-square&labelColor=07060f" />
  <img src="https://img.shields.io/badge/License-MIT-c0caf5?style=flat-square&labelColor=07060f" />
</p>

---

## What is TOA — Infernal?

A dark fantasy game project with a real-time backend for game state, player sessions, match coordination and event streaming.

## Features

- **Game state API** — maps, player sessions, match tracking
- **Event system** — real-time event ingestion and querying
- **Match coordination** — active match tracking with player limits
- **Health monitoring** — integrated with V0 dashboard
- **Docker-native** — containerized, auto-restart

## Quick start

```bash
docker compose up -d toa-internal
```

## API

| Endpoint | Method | Description |
|---|---|---|
| `/health` | GET | Health check with player count |
| `/status` | GET | Full status, matches, uptime |
| `/game` | GET | Current game state (maps, version, mode) |
| `/event` | POST | Submit game event |
| `/events` | GET | Event log (`?n=50` for last N) |

## Game state

```json
{
  "version": "0.1.0",
  "mode": "development",
  "maps": ["arena_01", "arena_02", "infernal_pit"],
  "max_players": 8
}
```

## Environment

| Variable | Default | Description |
|---|---|---|
| `TOA_PORT` | `7784` | HTTP server port |

## Related

<p align="center">
  <a href="https://github.com/VZero911/A.L.I.C.E"><img src="https://img.shields.io/badge/A.L.I.C.E-AI%20Framework-00ffcc?style=for-the-badge&logo=github&labelColor=07060f" alt="ALICE" /></a>
  <a href="https://github.com/VZero911/THESEED"><img src="https://img.shields.io/badge/THESEED-Web3%20Game-f2c14e?style=for-the-badge&logo=github&labelColor=07060f" alt="THESEED" /></a>
</p>

---

<p align="center"><i>Design By V0</i></p>
