import std/sequtils, std/strutils, std/tables

type
  ValueKind* = enum
    tInt,
    tBool,
    tString,
    tPath,
    tNull,
    tAttrs,
    tList,
    tThunk,
    tApp,
    tLambda,
    tBlackhole,
    tPrimOp,
    tPrimOpApp,
    tExternal,
    tFloat
  Value* = ref object
    case kind: ValueKind
    of tInt:
      num*: BiggestInt
    of tBool:
      boolean*: bool
    of tString:
      str*: string
    of tPath:
      path*: string
    of tNull:
      discard
    of tAttrs:
      attrs*: Table[string, Value]
    of tList:
      list*: seq[Value]
    of tThunk: discard
    of tApp: discard
    of tLambda: discard
    of tBlackhole: discard
    of tPrimOp: discard
    of tPrimOpApp: discard
    of tExternal: discard
    of tFloat:
      fnum*: float

func `$`*(v: Value): string =
  case v.kind:
  of tInt:
    result = $v.num
  of tBool:
    result = if v.boolean: "True" else: "False"
  of tString:
    result = "\"$1\"" % (v.str.replace("\"", "\\\""))
  of tPath:
    result = v.path
  of tNull:
    result = "null"
  of tAttrs:
    result = "{"
    for key, val in v.attrs.pairs:
      let key = if key.validIdentifier: key else: key.escape
      result.add("$1=$2;" % [ key, $val ])
    result.add "}"
  of tList:
    result = "[ "
    for e in v.list:
      result.add $e
      result.add " "
    result.add "]"
  of tFloat:
    result = $v.fnum
  else:
    result = $v.kind

func toNix*(x: Value): Value = x

func toNix*(x: SomeInteger): Value =
   Value(kind: tInt, num: x)

func toNix*(x: bool): Value =
   Value(kind: tBool, boolean: x)

func toNix*(x: string): Value =
   Value(kind: tString, str: x)

func toPath*(x: string): Value =
   Value(kind: tPath, path: x)

template toNix*(pairs: openArray[(string, Value)]): Value =
  Value(kind: tAttrs, attrs: toTable pairs)

func toNix*(x: seq[Value]): Value =
  Value(kind: tList, list: x)

template toNix*(x: seq[untyped]): Value =
  map(x, toNix).toNix

func toNix*(x: openarray[Value]): Value =
  Value(kind: tList, list: x[x.low .. x.high])

func toNix*(x: float): Value =
  Value(kind: tFloat, fnum: x)

template `[]=`*(result: Value; key: string; val: untyped) =
  result.attrs[key] = val.toNix

proc `[]`*(attrs: Value; key: string): Value =
  attrs.attrs[key]

proc newNull*(): Value =
  Value(kind: tNull)

proc newAttrs*(): Value =
  Value(kind: tAttrs, attrs: initTable[string, Value]())

func newList*(): Value =
  Value(kind: tList)

proc add*(x, y: Value) =
  x.list.add y
