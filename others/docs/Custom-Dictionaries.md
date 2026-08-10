# Fork-local dictionaries

This fork adds a private corpus dictionary and four topic dictionaries without changing upstream `rime_ice.dict.yaml`.
The wrapper dictionary `tcxz_rime_ice.dict.yaml` imports the fork-local dictionaries first and then imports upstream `rime_ice`.
Root-level `*.custom.yaml` patches select this wrapper for full pinyin, supported double-pinyin schemas, and T9.

## Included dictionaries

| File | Entries | Scope |
| --- | ---: | --- |
| `cn_dicts/tcxz_qq.dict.yaml` | 614 | Terms derived from the fork owner's private chat corpus |
| `cn_dicts/bilibili_hotwords.dict.yaml` | 139 | Bilibili platform vocabulary and Chinese internet slang |
| `cn_dicts/apex.dict.yaml` | 179 | Apex Legends characters, maps, equipment, weapons, and gameplay terms |
| `cn_dicts/tarkov.dict.yaml` | 200 | Escape from Tarkov maps, traders, equipment, systems, and community terms |
| `cn_dicts/vtuber.dict.yaml` | 173 | Virtual-streamer terminology, organizations, and creator names |

The private source messages and personal identifiers used to build `tcxz_qq` are not stored in this repository.
Only filtered dictionary entries are included.

## Maintained repositories reviewed

Research was refreshed on 2026-08-10 before creating these dictionaries.

- [`iDvel/rime-ice`](https://github.com/iDvel/rime-ice) — actively maintained, GPL-3.0; already contains broad `ext` and `tencent` dictionaries.
- [`LufsX/rime`](https://github.com/LufsX/rime) — actively maintained, GPL-3.0; automatically updates a Sogou network dictionary and tracks a generated Moegirl dictionary.
- [`outloudvi/mw2fcitx`](https://github.com/outloudvi/mw2fcitx) — actively maintained MIT-licensed generator for MediaWiki dictionaries; generated Moegirl data has separate source licensing.
- [`amzxyz/rime-wanxiang`](https://github.com/amzxyz/rime-wanxiang) — actively maintained under CC BY 4.0 and useful as a broad vocabulary reference.
- [`gaboolic/rime-frost`](https://github.com/gaboolic/rime-frost) — actively maintained under GPL-3.0 and useful as a broad vocabulary reference.
- [`soryu-ryouji/rime-acg`](https://github.com/soryu-ryouji/rime-acg) — describes itself as a maintained ACG dictionary, but no repository license was detected, so its data was not copied.

No actively maintained, clearly licensed Rime repository dedicated specifically to all four requested topics was found.
The four topic files in this fork are therefore small, fork-local curated dictionaries rather than bulk copies of an unlicensed collection.
Short factual names and terminology were cross-checked against the maintained projects above and current game/platform references; pinyin codes and weights are maintained here.

## Maintenance

- Keep entries tab-separated as `term<TAB>pinyin<TAB>weight`.
- Use weight `100` by default for topic dictionaries and raise only common canonical names.
- Preserve the frequency-derived weighting in `tcxz_qq`; it is intentionally scaled for personal-dictionary priority.
- Update the dictionary `version` when changing entries.
- Run `make -C others/script/ build` and the repository smoke tests before publishing changes.
