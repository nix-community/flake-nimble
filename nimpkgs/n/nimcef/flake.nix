{
  description = ''Nim wrapper for the Chromium Embedded Framework'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nimcef-master".type = "github";
  inputs."nimcef-master".owner = "riinr";
  inputs."nimcef-master".repo = "flake-nimble";
  inputs."nimcef-master".ref = "flake-pinning";
  inputs."nimcef-master".dir = "nimpkgs/n/nimcef/master";
  inputs."nimcef-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcef-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}