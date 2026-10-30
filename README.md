# codex-kit

Codex CLI에서 쓰는 작업 지침과 Skill 모음이다.

## 구성
- `AGENTS.md`: 시작 절차, 검증, 위임, 시간 관리, 금지 사항
- `.agents/skills/`: plan(계획 문서), verify(검증과 기록), delegate(위임), wrapup(마감)
- `setup.sh`: 작업 폴더에 위 파일을 복사한다. `~/.codex` 전역 설정은 건드리지 않는다

## 사용
작업 폴더에서 실행한다.

```bash
git clone https://github.com/easyhunjune/codex-kit /tmp/k && bash /tmp/k/setup.sh
```
