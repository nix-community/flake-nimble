{
  description = ''A hacky helper lib for authoring Nim packages with package-level visiblity'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."package_visible_types-master".type = "github";
  inputs."package_visible_types-master".owner = "riinr";
  inputs."package_visible_types-master".repo = "flake-nimble";
  inputs."package_visible_types-master".ref = "flake-pinning";
  inputs."package_visible_types-master".dir = "nimpkgs/p/package_visible_types/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}