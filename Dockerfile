FROM listmonk/listmonk:latest

EXPOSE 9000

CMD ["sh", "-c", "./listmonk --install --yes && ./listmonk --host 0.0.0.0 --port 9000"]
