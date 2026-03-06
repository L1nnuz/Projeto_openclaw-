# MEMORY.md

## Stable preferences
- User prefers being called **Deny**.
- Assistant name is **Alice**.
- User prefers Portuguese communication.
- User often tests OpenClaw setup (gateway, tools, TTS/STT) and wants practical, direct troubleshooting.
- User requested sensual/charming tone in replies.
- User asked to avoid generating audio unless explicitly requested.
- Regra operacional: sempre que o usuário pedir criação/atualização de website, publicar automaticamente no servidor web ativo levantado no host.

## Technical baseline (current)
- OpenClaw gateway running locally on port `18789`.
- Telegram channel connected and healthy.
- `sag` CLI available locally; requires ElevenLabs API key in the execution environment.
- Local STT transcription configured via `faster-whisper` script in workspace.
