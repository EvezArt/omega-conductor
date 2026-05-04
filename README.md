# EVEZ Omega-Conductor — Autonomous Developer Agent

The central orchestration engine for the EVEZ ecosystem.

## What it does
- **Autoenveloper**: Autonomous developer agent — give it a task, it plans, codes, tests, deploys
- **Omega-Conductor**: Routes tasks across the EVEZ ecosystem (evezstation, openclaw, agentnet, etc.)

## API
```
POST /run           { task, model, max_steps }  → synchronous execution
POST /run/async     { task }                    → background task, returns session_id
GET  /status/:id    → task status + steps
GET  /health        → system health
```

## Run locally
```bash
pip install -r requirements.txt
uvicorn agent.api:app --reload
```

## Deploy
Flies to Fly.io via GitHub Actions using evezstation's FLY_API_TOKEN cascade.
