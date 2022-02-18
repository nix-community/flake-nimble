{
  description = ''Animated GIF writing library based on jo_gif'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."gifwriter-master".type = "github";
  inputs."gifwriter-master".owner = "riinr";
  inputs."gifwriter-master".repo = "flake-nimble";
  inputs."gifwriter-master".ref = "flake-pinning";
  inputs."gifwriter-master".dir = "nimpkgs/g/gifwriter/master";

    inputs."gifwriter-v0_1_0".type = "github";
  inputs."gifwriter-v0_1_0".owner = "riinr";
  inputs."gifwriter-v0_1_0".repo = "flake-nimble";
  inputs."gifwriter-v0_1_0".ref = "flake-pinning";
  inputs."gifwriter-v0_1_0".dir = "nimpkgs/g/gifwriter/v0_1_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}