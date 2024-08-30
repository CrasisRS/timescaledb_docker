# Use the latest TimescaleDB image
FROM timescale/timescaledb:latest-pg16

ENV POSTGRES_PASSWORD=TESTPASSWORD
# Copy the custom configuration file to the container
COPY custom_postgresql.conf /etc/postgresql/postgresql.conf

# Optional: Set PostgreSQL to use the custom config file
# Add this command to your Dockerfile if you want to use the custom config file
CMD ["postgres", "-c", "config_file=/etc/postgresql/postgresql.conf"]
