#!/usr/bin/env bash
# 사용: 작업 폴더에서  bash ~/k/setup.sh
# 작업 폴더에 AGENTS.md와 .agents/skills만 복사한다. ~/.codex 전역 설정은 건드리지 않는다.
set -euo pipefail

SRC="$(cd "$(dirname "$0")" && pwd)"
DST="${1:-$PWD}"

mkdir -p "$DST/.agents/skills"
cp -r "$SRC/.agents/skills/." "$DST/.agents/skills/"

if [ -e "$DST/AGENTS.md" ]; then
  cp "$SRC/AGENTS.md" "$DST/.agents/AGENTS.kit.md"
  echo "[주의] AGENTS.md가 이미 있어 덮어쓰지 않았다. 내용을 확인한 뒤 붙이려면:"
  echo "       cat .agents/AGENTS.kit.md >> AGENTS.md"
else
  cp "$SRC/AGENTS.md" "$DST/AGENTS.md"
fi

echo "복사 완료: AGENTS.md, .agents/skills/ ($(ls "$DST/.agents/skills" | tr '\n' ' '))"
echo "이 폴더에서 codex를 새로 시작한다."
