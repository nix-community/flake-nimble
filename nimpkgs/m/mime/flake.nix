{
  description = ''Library for attaching files to emails.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."mime-master".type = "github";
  inputs."mime-master".owner = "riinr";
  inputs."mime-master".repo = "flake-nimble";
  inputs."mime-master".ref = "flake-pinning";
  inputs."mime-master".dir = "nimpkgs/m/mime/master";
  inputs."mime-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mime-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."mime-v0_0_3".type = "github";
  inputs."mime-v0_0_3".owner = "riinr";
  inputs."mime-v0_0_3".repo = "flake-nimble";
  inputs."mime-v0_0_3".ref = "flake-pinning";
  inputs."mime-v0_0_3".dir = "nimpkgs/m/mime/v0_0_3";
  inputs."mime-v0_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mime-v0_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}