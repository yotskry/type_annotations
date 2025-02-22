FROM python:3.12-slim

RUN pip install --no-cache-dir poetry
RUN apt-get update && apt-get install -y npm
RUN npm install -g pyright

WORKDIR /dir

COPY pyproject.toml ./

RUN poetry install --with dev --no-root --no-interaction

COPY . .

ENTRYPOINT ["poetry", "run", "pyright"]