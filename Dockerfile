FROM python:3.7-slim
RUN useradd juanipero -m
USER juanipero
ENV PATH="/home/juanipero/.local/bin:${PATH}"
COPY requirements.txt entrypoint.sh  /
RUN pip install --user --no-cache-dir -r requirements.txt
WORKDIR /usr/src/app
VOLUME ["/usr/src/app/"]
EXPOSE 8888
ENTRYPOINT "/entrypoint.sh"
