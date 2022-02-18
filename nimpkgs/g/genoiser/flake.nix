{
  description = ''functions to tracks for genomics data files'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."genoiser-master".type = "github";
  inputs."genoiser-master".owner = "riinr";
  inputs."genoiser-master".repo = "flake-nimble";
  inputs."genoiser-master".ref = "flake-pinning";
  inputs."genoiser-master".dir = "nimpkgs/g/genoiser/master";

    inputs."genoiser-v0_2_4".type = "github";
  inputs."genoiser-v0_2_4".owner = "riinr";
  inputs."genoiser-v0_2_4".repo = "flake-nimble";
  inputs."genoiser-v0_2_4".ref = "flake-pinning";
  inputs."genoiser-v0_2_4".dir = "nimpkgs/g/genoiser/v0_2_4";

    inputs."genoiser-v0_2_5".type = "github";
  inputs."genoiser-v0_2_5".owner = "riinr";
  inputs."genoiser-v0_2_5".repo = "flake-nimble";
  inputs."genoiser-v0_2_5".ref = "flake-pinning";
  inputs."genoiser-v0_2_5".dir = "nimpkgs/g/genoiser/v0_2_5";

    inputs."genoiser-v0_2_6".type = "github";
  inputs."genoiser-v0_2_6".owner = "riinr";
  inputs."genoiser-v0_2_6".repo = "flake-nimble";
  inputs."genoiser-v0_2_6".ref = "flake-pinning";
  inputs."genoiser-v0_2_6".dir = "nimpkgs/g/genoiser/v0_2_6";

    inputs."genoiser-v0_2_7".type = "github";
  inputs."genoiser-v0_2_7".owner = "riinr";
  inputs."genoiser-v0_2_7".repo = "flake-nimble";
  inputs."genoiser-v0_2_7".ref = "flake-pinning";
  inputs."genoiser-v0_2_7".dir = "nimpkgs/g/genoiser/v0_2_7";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}