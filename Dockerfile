# Use the official listmonk image
FROM listmonk/listmonk:latest

# Port used by listmonk
EXPOSE 9000

# The fix: --idempotent prevents overwriting existing data
# The --config "" flag tells listmonk to use Environment Variables instead of a file
CMD ["sh", "-c", "./listmonk --install --idempotent --yes --config '' && ./listmonk --upgrade --yes --config '' && ./listmonk --config ''"]
