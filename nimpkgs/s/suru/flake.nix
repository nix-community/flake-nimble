{
  description = ''A tqdm-style progress bar in Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."suru-master".type = "github";
  inputs."suru-master".owner = "riinr";
  inputs."suru-master".repo = "flake-nimble";
  inputs."suru-master".ref = "flake-pinning";
  inputs."suru-master".dir = "nimpkgs/s/suru/master";
  inputs."suru-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."suru-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."suru-v0_3_0".type = "github";
  inputs."suru-v0_3_0".owner = "riinr";
  inputs."suru-v0_3_0".repo = "flake-nimble";
  inputs."suru-v0_3_0".ref = "flake-pinning";
  inputs."suru-v0_3_0".dir = "nimpkgs/s/suru/v0_3_0";
  inputs."suru-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."suru-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."suru-v0_3_1".type = "github";
  inputs."suru-v0_3_1".owner = "riinr";
  inputs."suru-v0_3_1".repo = "flake-nimble";
  inputs."suru-v0_3_1".ref = "flake-pinning";
  inputs."suru-v0_3_1".dir = "nimpkgs/s/suru/v0_3_1";
  inputs."suru-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."suru-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}