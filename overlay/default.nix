nimbleSrc:

final: prev:
with prev; {

  nim = let nim-unwrapped = callPackage ./compiler/unwrapped { };
  in callPackage ./compiler/wrapper {
    nim = nim-unwrapped;
    nimStdLib = callPackage ./compiler/stdlib { nim = nim-unwrapped; };
    nimble = callPackage ./nimble { nim = nim-unwrapped; };
  };

}
