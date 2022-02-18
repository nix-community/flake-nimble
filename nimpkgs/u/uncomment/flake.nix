{
  description = ''uncomment the codes at the compile time'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."uncomment-main".type = "github";
  inputs."uncomment-main".owner = "riinr";
  inputs."uncomment-main".repo = "flake-nimble";
  inputs."uncomment-main".ref = "flake-pinning";
  inputs."uncomment-main".dir = "nimpkgs/u/uncomment/main";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}