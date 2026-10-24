FROM python:3.12-slim
ENV PYTHONDONTWRITEBYTECODE=1 PIP_DISABLE_PIP_VERSION_CHECK=1
RUN useradd -m -u 1000 -s /bin/bash analyst
RUN pip install --no-cache-dir --root-user-action=ignore numpy==2.1.3 scipy==1.14.1
RUN mkdir -p /logs/verifier && chown -R analyst /logs
WORKDIR /app
COPY app /app
RUN chown -R analyst /app
CMD ["sleep", "infinity"]
