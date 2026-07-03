FROM python:3.14-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD ["python", "-c", "print('Entorno Python listo. Ejecuta: docker compose run --rm etl jupyter nbconvert --to notebook --execute notebooks/proyecto_moduloI_completado.ipynb')"]
