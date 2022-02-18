{
  description = ''glue code generator to bind Nim and Lua together using Nim's powerful macro'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."nimLUA-master".type = "github";
  inputs."nimLUA-master".owner = "riinr";
  inputs."nimLUA-master".repo = "flake-nimble";
  inputs."nimLUA-master".ref = "flake-pinning";
  inputs."nimLUA-master".dir = "nimpkgs/n/nimLUA/master";

    inputs."nimLUA-v0_3_8".type = "github";
  inputs."nimLUA-v0_3_8".owner = "riinr";
  inputs."nimLUA-v0_3_8".repo = "flake-nimble";
  inputs."nimLUA-v0_3_8".ref = "flake-pinning";
  inputs."nimLUA-v0_3_8".dir = "nimpkgs/n/nimLUA/v0_3_8";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}