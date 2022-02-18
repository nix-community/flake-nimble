{
  description = ''A pure nim version of C++'s std::bitset'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."bitset-main".type = "github";
  inputs."bitset-main".owner = "riinr";
  inputs."bitset-main".repo = "flake-nimble";
  inputs."bitset-main".ref = "flake-pinning";
  inputs."bitset-main".dir = "nimpkgs/b/bitset/main";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}