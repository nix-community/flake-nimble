{
  description = ''Write GUI automation scripts with Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."autome-master".type = "github";
  inputs."autome-master".owner = "riinr";
  inputs."autome-master".repo = "flake-nimble";
  inputs."autome-master".ref = "flake-pinning";
  inputs."autome-master".dir = "nimpkgs/a/autome/master";
  inputs."autome-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."autome-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}