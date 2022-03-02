{
  description = ''Wrapper for librsvg, a Scalable Vector Graphics (SVG) rendering library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."rsvg-master".type = "github";
  inputs."rsvg-master".owner = "riinr";
  inputs."rsvg-master".repo = "flake-nimble";
  inputs."rsvg-master".ref = "flake-pinning";
  inputs."rsvg-master".dir = "nimpkgs/r/rsvg/master";
  inputs."rsvg-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rsvg-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}