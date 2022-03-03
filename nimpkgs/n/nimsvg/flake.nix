{
  description = ''Nim-based DSL allowing to generate SVG files and GIF animations.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nimsvg-master".type = "github";
  inputs."nimsvg-master".owner = "riinr";
  inputs."nimsvg-master".repo = "flake-nimble";
  inputs."nimsvg-master".ref = "flake-pinning";
  inputs."nimsvg-master".dir = "nimpkgs/n/nimsvg/master";
  inputs."nimsvg-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimsvg-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}