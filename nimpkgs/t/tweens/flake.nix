{
  description = ''Basic tweening library for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."tweens-master".type = "github";
  inputs."tweens-master".owner = "riinr";
  inputs."tweens-master".repo = "flake-nimble";
  inputs."tweens-master".ref = "flake-pinning";
  inputs."tweens-master".dir = "nimpkgs/t/tweens/master";
  inputs."tweens-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tweens-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}