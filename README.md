# Diff, Match and Patch

A port of [Google Diff Match and Patch library](https://github.com/google/diff-match-patch) to Dart

* [Repository](https://github.com/rikulo/diff-match-patch)
* [API Reference](https://pub.dev/documentation/diff_match_patch2/latest/)

## Usage

```
import "package:diff_match_patch2/diff_match_patch.dart";

...
  final dmp = DiffMatchPatch();
  dmp.patch_main(oldText, newText);
```

* `Patch` and `Diff` can be jsonized. To decode, use `Patch.fromJson` and `Diff.fromJson`.
   * [Example](https://github.com/rikulo/diff-match-patch/blob/main/test/diff_test.dart)
* `patch_main` in [Google Diff Match and Patch library](https://github.com/google/diff-match-patch) are split into `patch_main`, `patch_diffs` and `patch_make` for strong types.

## Who Uses

* [Quire](https://quire.io) - a simple, collaborative, multi-level task management tool.
* [Keikai](https://keikai.io) - a sophisticated spreadsheet for big data
