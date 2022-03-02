{
  description = ''Module for working with RIS citation files'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."ris-master".type = "github";
  inputs."ris-master".owner = "riinr";
  inputs."ris-master".repo = "flake-nimble";
  inputs."ris-master".ref = "flake-pinning";
  inputs."ris-master".dir = "nimpkgs/r/ris/master";
  inputs."ris-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ris-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}