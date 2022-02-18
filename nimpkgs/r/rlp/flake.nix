{
  description = ''Deprecated RLP serialization library for Nim (now part of the 'eth' module)'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."rlp-master".type = "github";
  inputs."rlp-master".owner = "riinr";
  inputs."rlp-master".repo = "flake-nimble";
  inputs."rlp-master".ref = "flake-pinning";
  inputs."rlp-master".dir = "nimpkgs/r/rlp/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}