{
  description = ''A small package to create lindenmayer-systems or l-systems.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."echon-master".type = "github";
  inputs."echon-master".owner = "riinr";
  inputs."echon-master".repo = "flake-nimble";
  inputs."echon-master".ref = "flake-pinning";
  inputs."echon-master".dir = "nimpkgs/e/echon/master";
  inputs."echon-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."echon-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."echon-1_0_0".type = "github";
  inputs."echon-1_0_0".owner = "riinr";
  inputs."echon-1_0_0".repo = "flake-nimble";
  inputs."echon-1_0_0".ref = "flake-pinning";
  inputs."echon-1_0_0".dir = "nimpkgs/e/echon/1_0_0";
  inputs."echon-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."echon-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}