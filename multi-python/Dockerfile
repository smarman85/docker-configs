FROM python:3 as python-base
COPY req.txt .
RUN pip install -r req.txt

FROM python:3-alpine
COPY --from=python-base /root/.cache /root/.cache
COPY --from=python-base req.txt .
RUN pip install -r req.txt && rm -rf /root/.cache
