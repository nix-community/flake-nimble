{
  description = ''High-level nim wrapper for C/C++ parsing'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."hcparse-master".type = "github";
  inputs."hcparse-master".owner = "riinr";
  inputs."hcparse-master".repo = "flake-nimble";
  inputs."hcparse-master".ref = "flake-pinning";
  inputs."hcparse-master".dir = "nimpkgs/h/hcparse/master";

    inputs."hcparse-v0_1_2".type = "github";
  inputs."hcparse-v0_1_2".owner = "riinr";
  inputs."hcparse-v0_1_2".repo = "flake-nimble";
  inputs."hcparse-v0_1_2".ref = "flake-pinning";
  inputs."hcparse-v0_1_2".dir = "nimpkgs/h/hcparse/v0_1_2";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}