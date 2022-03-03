{
  description = ''A high performance Nim implementation of a Cyclic Polynomial Hash, aka BuzHash, and the Rabin-Karp algorithm'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."rollinghash-master".type = "github";
  inputs."rollinghash-master".owner = "riinr";
  inputs."rollinghash-master".repo = "flake-nimble";
  inputs."rollinghash-master".ref = "flake-pinning";
  inputs."rollinghash-master".dir = "nimpkgs/r/rollinghash/master";
  inputs."rollinghash-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rollinghash-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}