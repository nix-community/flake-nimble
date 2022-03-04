{
  description = ''Deprecated RLP serialization library for Nim (now part of the 'eth' module)'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-rlp-master.flake = false;
  inputs.src-rlp-master.type = "github";
  inputs.src-rlp-master.owner = "status-im";
  inputs.src-rlp-master.repo = "nim-rlp";
  inputs.src-rlp-master.ref = "refs/heads/master";
  inputs.src-rlp-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."ranges".type = "github";
  inputs."ranges".owner = "riinr";
  inputs."ranges".repo = "flake-nimble";
  inputs."ranges".ref = "flake-pinning";
  inputs."ranges".dir = "nimpkgs/r/ranges";
  inputs."ranges".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ranges".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-rlp-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-rlp-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-rlp-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}