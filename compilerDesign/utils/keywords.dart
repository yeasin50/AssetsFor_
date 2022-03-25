const reversed_words = [
  "assert",
  "break",
  "case",
  "catch",
  "class",
  "const",
  "continue",
  "default",
  "do",
  "else",
  "enum",
  "extends",
  "false",
  "final",
  "finally",
  "for",
  "if",
  "in",
  "is",
  "new",
  "null",
  "rethrow",
  "return",
  "super",
  "this",
  "throw",
  "true",
  "try",
  "var",
  "void",
  "while",
  "with"
];

/// which have meaning only in specific places. They’re valid identifiers everywhere.
const contextual_keywords = [
  "async",
  "hide",
  "on",
  "show",
  "sync",
];

///hese keywords are valid identifiers in most places, but they can’t be used as class or type names, or as import prefixes.
const builtIn_identifiers = [
  "abstract",
  "as",
  "covariant",
  "deferred",
  "export",
  "extension",
  "external",
  "factory",
  "Funtion",
  "get",
  "implements",
  "import",
  "interface",
  "late",
  "library",
  "mixin",
  "operator",
  "part",
  "required",
  "set",
  "static",
  "typedef"
];

///imited reserved words related to asynchrony support. You can’t use await or yield as an identifier in any function body marked with async, async*, or sync*.
const limited_reserved_words = ["await", "yield"];

List<String> get keywords => [
      ...reversed_words,
      ...contextual_keywords,
      ...builtIn_identifiers,
      ...limited_reserved_words
    ];
