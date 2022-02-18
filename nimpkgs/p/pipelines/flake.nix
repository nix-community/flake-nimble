{
  description = ''A tiny framework & language for crafting massively parallel data pipelines'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."pipelines-master".type = "github";
  inputs."pipelines-master".owner = "riinr";
  inputs."pipelines-master".repo = "flake-nimble";
  inputs."pipelines-master".ref = "flake-pinning";
  inputs."pipelines-master".dir = "nimpkgs/p/pipelines/master";

    inputs."pipelines-v0_1_0".type = "github";
  inputs."pipelines-v0_1_0".owner = "riinr";
  inputs."pipelines-v0_1_0".repo = "flake-nimble";
  inputs."pipelines-v0_1_0".ref = "flake-pinning";
  inputs."pipelines-v0_1_0".dir = "nimpkgs/p/pipelines/v0_1_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}