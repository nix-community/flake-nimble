{
  description = ''High-level and low-level interfaces to python and lua'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."NimBorg-master".type = "github";
  inputs."NimBorg-master".owner = "riinr";
  inputs."NimBorg-master".repo = "flake-nimble";
  inputs."NimBorg-master".ref = "flake-pinning";
  inputs."NimBorg-master".dir = "nimpkgs/n/NimBorg/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}