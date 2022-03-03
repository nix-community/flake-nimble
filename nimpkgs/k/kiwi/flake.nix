{
  description = ''Cassowary constraint solving'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."kiwi-master".type = "github";
  inputs."kiwi-master".owner = "riinr";
  inputs."kiwi-master".repo = "flake-nimble";
  inputs."kiwi-master".ref = "flake-pinning";
  inputs."kiwi-master".dir = "nimpkgs/k/kiwi/master";
  inputs."kiwi-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."kiwi-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}