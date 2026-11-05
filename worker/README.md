# Monitoring Worker (Python) — Owner: Member 2

Separate process that consumes jobs from Redis, checks websites/APIs,
stores results in PostgreSQL, and runs the state machine + adaptive intervals.
Must NOT be inside FastAPI. Exposes `/health` for the Kubernetes liveness probe.
