{
  description = ''Tiingo'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."nimtiingo-main".type = "github";
  inputs."nimtiingo-main".owner = "riinr";
  inputs."nimtiingo-main".repo = "flake-nimble";
  inputs."nimtiingo-main".ref = "flake-pinning";
  inputs."nimtiingo-main".dir = "nimpkgs/n/nimtiingo/main";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
