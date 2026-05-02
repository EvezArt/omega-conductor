FROM python:3.12-slim

WORKDIR /app
COPY . .

RUN pip install --no-cache-dir requests httpx supabase

ENV SUPABASE_REF=vziaqxquzohqskesuxgz

CMD ["python", "-m", "omega_conductor.sync"]
