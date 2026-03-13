FROM openlistteam/openlist:latest

# 切换到 root 修改权限
USER root
RUN mkdir -p /opt/openlist/data && chown -R 10014:10014 /opt/openlist/data
RUN mkdir -p /opt/alist/data && chown -R 10014:10014 /opt/alist/data

# 切换回 Choreo 要求的非 root 用户
USER 10014

# 声明新端口
EXPOSE 56889

# 关键：使用 --address 参数指定监听端口
CMD ["./openlist", "server", "--address", "0.0.0.0:56889", "--data", "/opt/openlist/data"]
