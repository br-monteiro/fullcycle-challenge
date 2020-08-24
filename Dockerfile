FROM python:3.5-alpine
WORKDIR /app
EXPOSE 8080
ENV FLASK_APP app.py
ENV FLASK_RUN_HOST 0.0.0.0
ENV FLASK_RUN_PORT 8080
COPY . .
RUN pip install -r requirements.txt
ENTRYPOINT ["flask", "run"]