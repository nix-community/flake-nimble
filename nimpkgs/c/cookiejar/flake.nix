{
  description = ''HTTP Cookies for Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."cookiejar-master".type = "github";
  inputs."cookiejar-master".owner = "riinr";
  inputs."cookiejar-master".repo = "flake-nimble";
  inputs."cookiejar-master".ref = "flake-pinning";
  inputs."cookiejar-master".dir = "nimpkgs/c/cookiejar/master";

    inputs."cookiejar-v0_1_0".type = "github";
  inputs."cookiejar-v0_1_0".owner = "riinr";
  inputs."cookiejar-v0_1_0".repo = "flake-nimble";
  inputs."cookiejar-v0_1_0".ref = "flake-pinning";
  inputs."cookiejar-v0_1_0".dir = "nimpkgs/c/cookiejar/v0_1_0";

    inputs."cookiejar-v0_2_0".type = "github";
  inputs."cookiejar-v0_2_0".owner = "riinr";
  inputs."cookiejar-v0_2_0".repo = "flake-nimble";
  inputs."cookiejar-v0_2_0".ref = "flake-pinning";
  inputs."cookiejar-v0_2_0".dir = "nimpkgs/c/cookiejar/v0_2_0";

    inputs."cookiejar-v0_3_0".type = "github";
  inputs."cookiejar-v0_3_0".owner = "riinr";
  inputs."cookiejar-v0_3_0".repo = "flake-nimble";
  inputs."cookiejar-v0_3_0".ref = "flake-pinning";
  inputs."cookiejar-v0_3_0".dir = "nimpkgs/c/cookiejar/v0_3_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}