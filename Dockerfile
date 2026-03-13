FROM openlistteam/openlist:latest

# 切换到 root 修改权限
USER root
RUN mkdir -p /opt/openlist/data && chown -R 10014:10014 /opt/openlist/data

# 切换回 Choreo 要求的非 root 用户
USER 10014

# 声明端口
EXPOSE 56889

# 使用环境变量 OPENLIST_PORT 来强制修改监听端口
ENV OPENLIST_PORT=56889

# 启动命令：移除无效的 --address，保留 --data
CMD ["./openlist", "server", "--data", "/opt/openlist/data"]
