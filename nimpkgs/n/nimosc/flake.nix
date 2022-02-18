{
  description = ''A wrapper around liblo for the Open Sound Control (OSC) protocol'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."nimosc-main".type = "github";
  inputs."nimosc-main".owner = "riinr";
  inputs."nimosc-main".repo = "flake-nimble";
  inputs."nimosc-main".ref = "flake-pinning";
  inputs."nimosc-main".dir = "nimpkgs/n/nimosc/main";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}