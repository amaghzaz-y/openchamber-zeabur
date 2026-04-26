# OpenChamber Zeabur Template

Docker template for deploying [OpenChamber](https://openchamber.dev) on Zeabur.

## Quick Deploy

[![Deploy on Zeabur](https://zeabur.com/button.svg)](https://zeabur.com/templates/openchamber-zeabur)

## What is OpenChamber?

A rich interface for OpenCode. Review diffs, manage agents, run dev servers, and keep the big picture while your AI codes.

## Environment Variables

| Variable | Description | Default |
|----------|-------------|---------|
| `OPENCHAMBER_HOST` | Bind address | `0.0.0.0` |
| `OPENCHAMBER_UI_PASSWORD` | UI password protection | - |
| `OPENCHAMBER_DATA_DIR` | Data directory | - |
| `OPENCODE_HOST` | External OpenCode server URL | - |
| `OPENCODE_PORT` | External OpenCode server port | - |
| `OPENCODE_SKIP_START` | Skip starting OpenCode | `false` |
| `OPENCHAMBER_OPENCODE_HOSTNAME` | OpenCode bind hostname | `127.0.0.1` |

## Resources

- [OpenChamber Docs](https://openchamber.dev)
- [OpenCode](https://opencode.ai)