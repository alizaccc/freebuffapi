FROM ghcr.io/astral-sh/uv:python3.12-bookworm-slim

# 设置工作目录为根目录
WORKDIR /app

# 复制所有文件
COPY . /app

# 安装 uv 并同步依赖
RUN uv sync --frozen --no-cache

# 暴露端口
EXPOSE 8000

# 启动命令（根据项目实际入口）
CMD ["uv", "run", "freebuff2api"]
# 或者使用 main.py：
# CMD ["uv", "run", "python", "main.py"]
