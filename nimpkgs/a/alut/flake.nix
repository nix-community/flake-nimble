{
  description = ''OpenAL Utility Toolkit (ALUT)'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."alut-master".type = "github";
  inputs."alut-master".owner = "riinr";
  inputs."alut-master".repo = "flake-nimble";
  inputs."alut-master".ref = "flake-pinning";
  inputs."alut-master".dir = "nimpkgs/a/alut/master";
  inputs."alut-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."alut-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}