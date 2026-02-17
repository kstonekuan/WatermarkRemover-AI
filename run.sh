#!/usr/bin/env bash
cd "$(dirname "$0")"
if ! command -v uv >/dev/null 2>&1; then
    echo "uv is required. Install it from https://docs.astral.sh/uv/"
    exit 1
fi
if [ ! -x "venv/bin/python" ]; then
    echo "venv not found. Run ./setup.sh first."
    exit 1
fi
uv run --no-project --python venv/bin/python python remwmgui.py
