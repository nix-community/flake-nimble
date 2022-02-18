{
  description = ''An implementation of rx observables in nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."rx_nim-master".type = "github";
  inputs."rx_nim-master".owner = "riinr";
  inputs."rx_nim-master".repo = "flake-nimble";
  inputs."rx_nim-master".ref = "flake-pinning";
  inputs."rx_nim-master".dir = "nimpkgs/r/rx_nim/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}