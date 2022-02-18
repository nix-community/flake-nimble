{
  description = ''Netty is a reliable UDP connection for games.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."netty-master".type = "github";
  inputs."netty-master".owner = "riinr";
  inputs."netty-master".repo = "flake-nimble";
  inputs."netty-master".ref = "flake-pinning";
  inputs."netty-master".dir = "nimpkgs/n/netty/master";

    inputs."netty-0_2_0".type = "github";
  inputs."netty-0_2_0".owner = "riinr";
  inputs."netty-0_2_0".repo = "flake-nimble";
  inputs."netty-0_2_0".ref = "flake-pinning";
  inputs."netty-0_2_0".dir = "nimpkgs/n/netty/0_2_0";

    inputs."netty-0_2_1".type = "github";
  inputs."netty-0_2_1".owner = "riinr";
  inputs."netty-0_2_1".repo = "flake-nimble";
  inputs."netty-0_2_1".ref = "flake-pinning";
  inputs."netty-0_2_1".dir = "nimpkgs/n/netty/0_2_1";

    inputs."netty-v0_1_0".type = "github";
  inputs."netty-v0_1_0".owner = "riinr";
  inputs."netty-v0_1_0".repo = "flake-nimble";
  inputs."netty-v0_1_0".ref = "flake-pinning";
  inputs."netty-v0_1_0".dir = "nimpkgs/n/netty/v0_1_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}