FROM postgres:17-alpine

EXPOSE 5432

CMD ["postgres", "-c", "log_statement=all", "-c", "wal_level=logical", "-c", "max_replication_slots=10", "-c", "max_wal_senders=10"]