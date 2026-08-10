# Fork-specific Flypy English priority

This fork adjusts only `double_pinyin_flypy` so incomplete English entries do not interrupt normal Chinese composition.

## Behavior

- Two-or-more all-uppercase ASCII letters keep their exact spelling as candidate 1, for example `NI` → `NI` rather than `NIB`.
- English prefix expansion is disabled. Exact English dictionary matches remain available.
- Chinese incomplete-code completion is enabled and has priority over English.
- The trailing `b` and `q` initials receive narrow derived spellings. This fixes cases such as `nib` → `你不` and `erq` → `而且` without enabling broad one-letter abbreviations for every syllable.

## Implementation

- `double_pinyin_flypy.custom.yaml` contains the fork-local translator and spelling patches.
- `lua/uppercase_raw.lua` emits exact two-or-more-letter uppercase ASCII input with high quality while leaving `V1`, `U4f60`, and similar command prefixes untouched.
- Regression cases are in `others/script/smoke/cases/rime_ice/input_cases.tsv`.

The generic `double_pinyin_flypy.schema.yaml` remains untouched so upstream updates are easier to merge.
