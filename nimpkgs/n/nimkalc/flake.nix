{
  description = ''An advanced parsing library for mathematical expressions and equations'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."nimkalc-master".type = "github";
  inputs."nimkalc-master".owner = "riinr";
  inputs."nimkalc-master".repo = "flake-nimble";
  inputs."nimkalc-master".ref = "flake-pinning";
  inputs."nimkalc-master".dir = "nimpkgs/n/nimkalc/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}