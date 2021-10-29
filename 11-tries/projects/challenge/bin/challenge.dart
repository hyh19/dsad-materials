// Copyright (c) 2021 Razeware LLC
// For full license & permission details, see LICENSE.

import 'string_trie.dart';
import 'trie.dart';

void main() {
  challengeOne();
  challengeTwo();
}

/// Challenge 1: Additional properties
///
/// The current implementation of the `StringTrie` is missing some notable
/// operations. Your task for this challenge is to augment the current
/// implementation of the trie by adding the following:
///
/// 1. An `allStrings` property that returns all the strings in the trie.
///
/// 2. A `count` property that tells you how many strings are currently in
///    the trie.
///
/// 3. An `isEmpty` property that returns `true` if the trie is empty, `false`
///    otherwise.
void challengeOne() {
  // See string_trie.dart for the implementation details.
  final trie = StringTrie();
  print(trie.isEmpty);
  trie.insert('cut');
  trie.insert('cute');
  print(trie.allStrings);
  print(trie.length);
  print(trie.isEmpty);
}

/// Challenge 2: Generic trie
///
/// The trie data structure can be used beyond strings. Make a new class
/// named `Trie` that handles any iterable collection.
void challengeTwo() {
  // See trie.dart for the implementation details.
  final trie = Trie<int, List<int>>();
  trie.insert('cut'.codeUnits);
  trie.insert('cute'.codeUnits);
  if (trie.contains('cute'.codeUnits)) {
    print('cute is in the trie');
  }
  trie.remove('cut'.codeUnits);
  if (!trie.contains('cut'.codeUnits)) {
    print('cut has been removed');
  }
}
