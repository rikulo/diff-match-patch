//Copyright (C) 2022 Potix Corporation. All Rights Reserved.
//History: Thu Jun 30 16:51:37 CST 2022
// Author: tomyeh
library common.diff_test;

import "dart:convert";

import "package:rikulo_commons/util.dart" show convertListNS;
import "package:test/test.dart";

import "package:diff_match_patch2/diff_match_patch.dart";

void main() {
  test("simple", () {
    final oldText = '''
000
aaa
bbb
ccc
ddd
eee
fff
ggg
hhh
iii''',
      newText = '''
000
aaa
ccc
bbb
jjj
eee
fff
ggg
hhh
iii''';
    final dmp = DiffMatchPatch(),
      //diff = dmp.diff_main(oldText, newText),
      patch = dmp.patch_main(oldText, newText);;
    print("${patch.length}: ${patch.map((p) => p.toGnuString())}");
    expect(dmp.patch_apply(patch, oldText).first, newText);

    //test json encode and decode
    final enc = json.encode(patch);
    final p2 = convertListNS(json.decode(enc) as List, Patch.fromJson);
    expect(dmp.patch_apply(p2, oldText).first, newText);
  });
}
