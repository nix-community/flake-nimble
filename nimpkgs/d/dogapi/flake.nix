{
  description = ''Dog API client'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."dogapi-main".type = "github";
  inputs."dogapi-main".owner = "riinr";
  inputs."dogapi-main".repo = "flake-nimble";
  inputs."dogapi-main".ref = "flake-pinning";
  inputs."dogapi-main".dir = "nimpkgs/d/dogapi/main";
  inputs."dogapi-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dogapi-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."dogapi-v1_0_0".type = "github";
  inputs."dogapi-v1_0_0".owner = "riinr";
  inputs."dogapi-v1_0_0".repo = "flake-nimble";
  inputs."dogapi-v1_0_0".ref = "flake-pinning";
  inputs."dogapi-v1_0_0".dir = "nimpkgs/d/dogapi/v1_0_0";
  inputs."dogapi-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dogapi-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}