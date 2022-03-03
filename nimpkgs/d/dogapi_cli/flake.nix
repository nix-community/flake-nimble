{
  description = ''Tool to download dogs images'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."dogapi_cli-main".type = "github";
  inputs."dogapi_cli-main".owner = "riinr";
  inputs."dogapi_cli-main".repo = "flake-nimble";
  inputs."dogapi_cli-main".ref = "flake-pinning";
  inputs."dogapi_cli-main".dir = "nimpkgs/d/dogapi_cli/main";
  inputs."dogapi_cli-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dogapi_cli-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."dogapi_cli-v1_0_0".type = "github";
  inputs."dogapi_cli-v1_0_0".owner = "riinr";
  inputs."dogapi_cli-v1_0_0".repo = "flake-nimble";
  inputs."dogapi_cli-v1_0_0".ref = "flake-pinning";
  inputs."dogapi_cli-v1_0_0".dir = "nimpkgs/d/dogapi_cli/v1_0_0";
  inputs."dogapi_cli-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dogapi_cli-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}