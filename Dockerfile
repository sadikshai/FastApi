FROM python:3.12.7-alpine As builder 
LABEL author="sadik"
COPY . /app
RUN pip3 install -r requirements.txt


FROM python:3.12.7-alpine AS runner 
LABEL author="sadik"
USER nobody 
COPY --from=builder /usr/local/lib/python3.12/site-packages /usr/local/lib/python3.12/site-packages
COPY --chown=nobody . /app
WORKDIR /app
EXPOSE 8000
RUN pip ins
