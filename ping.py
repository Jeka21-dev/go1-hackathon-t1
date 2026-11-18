#!/usr/bin/env python3
import json
import sys

payload = {
    "protocol_version": "1.0",
    "supported_tasks": [],
    "self_trained_rl": False,
    "preferred_speed_mps": None,
}

sys.stdout.write(json.dumps(payload, ensure_ascii=False))
sys.stdout.flush()
sys.exit(0)
