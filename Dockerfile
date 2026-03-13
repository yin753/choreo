FROM openlistteam/openlist:latest
USER 10014
EXPOSE 5244
CMD ["./openlist", "server"]
