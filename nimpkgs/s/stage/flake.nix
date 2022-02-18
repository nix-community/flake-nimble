{
  description = ''nim tasks apply to git hooks'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."stage-master".type = "github";
  inputs."stage-master".owner = "riinr";
  inputs."stage-master".repo = "flake-nimble";
  inputs."stage-master".ref = "flake-pinning";
  inputs."stage-master".dir = "nimpkgs/s/stage/master";

    inputs."stage-v0_3_5".type = "github";
  inputs."stage-v0_3_5".owner = "riinr";
  inputs."stage-v0_3_5".repo = "flake-nimble";
  inputs."stage-v0_3_5".ref = "flake-pinning";
  inputs."stage-v0_3_5".dir = "nimpkgs/s/stage/v0_3_5";

    inputs."stage-v0_3_6".type = "github";
  inputs."stage-v0_3_6".owner = "riinr";
  inputs."stage-v0_3_6".repo = "flake-nimble";
  inputs."stage-v0_3_6".ref = "flake-pinning";
  inputs."stage-v0_3_6".dir = "nimpkgs/s/stage/v0_3_6";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}