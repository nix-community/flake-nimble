{
  description = ''Analog electronic circuit simiulator library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."ngspice-master".type = "github";
  inputs."ngspice-master".owner = "riinr";
  inputs."ngspice-master".repo = "flake-nimble";
  inputs."ngspice-master".ref = "flake-pinning";
  inputs."ngspice-master".dir = "nimpkgs/n/ngspice/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}