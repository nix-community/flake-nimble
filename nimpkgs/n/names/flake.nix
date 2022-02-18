{
  description = ''String interning library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."names-master".type = "github";
  inputs."names-master".owner = "riinr";
  inputs."names-master".repo = "flake-nimble";
  inputs."names-master".ref = "flake-pinning";
  inputs."names-master".dir = "nimpkgs/n/names/master";

    inputs."names-v0_1_0".type = "github";
  inputs."names-v0_1_0".owner = "riinr";
  inputs."names-v0_1_0".repo = "flake-nimble";
  inputs."names-v0_1_0".ref = "flake-pinning";
  inputs."names-v0_1_0".dir = "nimpkgs/n/names/v0_1_0";

  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}