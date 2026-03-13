FROM openlistteam/openlist:latest

# 切换到 root 创建目录并赋权
USER root
RUN mkdir -p /opt/openlist/data && chown -R 10014:10014 /opt/openlist/data

# 设置工作目录
WORKDIR /opt/openlist

# 切换回 Choreo 用户
USER 10014

# 环境变量设置
ENV OPENLIST_DATA=/opt/openlist/data
