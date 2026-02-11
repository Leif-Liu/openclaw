#!/bin/bash
# OpenClaw SSH 隧道启动脚本
# 使用方法: ./openclaw-tunnel.sh

SERVER="liufeng@10.10.11.13"
LOCAL_PORT=18789
REMOTE_PORT=18789
TOKEN="xxx"

echo "=========================================="
echo "     OpenClaw SSH 隧道启动"
echo "=========================================="
echo ""
echo "配置信息:"
echo "  服务器: $SERVER"
echo "  本地端口: $LOCAL_PORT -> 服务器:$REMOTE_PORT"
echo ""
echo "访问地址:"
echo "  http://127.0.0.1:$LOCAL_PORT/chat?session=main"
echo ""
echo "认证 Token:"
echo "  $TOKEN"
echo ""
echo "按 Ctrl+C 停止隧道"
echo "=========================================="
echo ""

ssh -N -L ${LOCAL_PORT}:127.0.0.1:${REMOTE_PORT} $SERVER
