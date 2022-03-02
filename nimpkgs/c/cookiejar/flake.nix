{
  description = ''HTTP Cookies for Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."cookiejar-master".type = "github";
  inputs."cookiejar-master".owner = "riinr";
  inputs."cookiejar-master".repo = "flake-nimble";
  inputs."cookiejar-master".ref = "flake-pinning";
  inputs."cookiejar-master".dir = "nimpkgs/c/cookiejar/master";
  inputs."cookiejar-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cookiejar-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."cookiejar-v0_1_0".type = "github";
  inputs."cookiejar-v0_1_0".owner = "riinr";
  inputs."cookiejar-v0_1_0".repo = "flake-nimble";
  inputs."cookiejar-v0_1_0".ref = "flake-pinning";
  inputs."cookiejar-v0_1_0".dir = "nimpkgs/c/cookiejar/v0_1_0";
  inputs."cookiejar-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cookiejar-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."cookiejar-v0_2_0".type = "github";
  inputs."cookiejar-v0_2_0".owner = "riinr";
  inputs."cookiejar-v0_2_0".repo = "flake-nimble";
  inputs."cookiejar-v0_2_0".ref = "flake-pinning";
  inputs."cookiejar-v0_2_0".dir = "nimpkgs/c/cookiejar/v0_2_0";
  inputs."cookiejar-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cookiejar-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."cookiejar-v0_3_0".type = "github";
  inputs."cookiejar-v0_3_0".owner = "riinr";
  inputs."cookiejar-v0_3_0".repo = "flake-nimble";
  inputs."cookiejar-v0_3_0".ref = "flake-pinning";
  inputs."cookiejar-v0_3_0".dir = "nimpkgs/c/cookiejar/v0_3_0";
  inputs."cookiejar-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cookiejar-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}