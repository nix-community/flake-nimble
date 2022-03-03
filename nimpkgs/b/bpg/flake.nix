{
  description = ''BPG (Better Portable Graphics) for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."bpg-master".type = "github";
  inputs."bpg-master".owner = "riinr";
  inputs."bpg-master".repo = "flake-nimble";
  inputs."bpg-master".ref = "flake-pinning";
  inputs."bpg-master".dir = "nimpkgs/b/bpg/master";
  inputs."bpg-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bpg-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}