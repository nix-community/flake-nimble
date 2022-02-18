{
  description = ''Tiingo'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."nimTiingo-main".type = "github";
  inputs."nimTiingo-main".owner = "riinr";
  inputs."nimTiingo-main".repo = "flake-nimble";
  inputs."nimTiingo-main".ref = "flake-pinning";
  inputs."nimTiingo-main".dir = "nimpkgs/n/nimTiingo/main";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}