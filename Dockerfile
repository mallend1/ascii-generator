FROM python:3.13.0rc2-bookworm

ARG INPUT
ENV INPUT=${INPUT}

RUN apt-get update && apt-get install -y figlet \
    && pip install pyfiglet

COPY . .

RUN chmod +x generate-ascii.sh

CMD ["python3", "generate-ascii.sh"]
