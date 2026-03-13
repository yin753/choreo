FROM openlistteam/openlist:latest

# 切换到 root 以准备目录权限
USER root
RUN mkdir -p /opt/openlist/data && chown -R 10014:10014 /opt/openlist/data

# 设置工作目录
WORKDIR /opt/openlist

# 显式声明端口（根据 OpenList 实际端口调整，通常为 5244）
EXPOSE 5244

# 切换为 Choreo 指定的非 root 用户
USER 10014

# 设置数据环境变量
ENV OPENLIST_DATA=/opt/openlist/data
