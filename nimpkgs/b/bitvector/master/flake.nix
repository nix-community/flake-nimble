{
  description = ''A high performance Nim implementation of BitVector with base SomeUnsignedInt(i.e: uint8-64) with support for slices, and seq supported operations'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-bitvector-master.flake = false;
  inputs.src-bitvector-master.type = "github";
  inputs.src-bitvector-master.owner = "MarcAzar";
  inputs.src-bitvector-master.repo = "BitVector";
  inputs.src-bitvector-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-bitvector-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-bitvector-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-bitvector-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}