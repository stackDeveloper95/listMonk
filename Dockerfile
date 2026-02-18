FROM listmonk/listmonk:latest

EXPOSE 9000

CMD ["sh", "-c", "./listmonk --install && ./listmonk"]
