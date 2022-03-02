{
  description = ''Library for detecting the format of an video file'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."vidhdr-master".type = "github";
  inputs."vidhdr-master".owner = "riinr";
  inputs."vidhdr-master".repo = "flake-nimble";
  inputs."vidhdr-master".ref = "flake-pinning";
  inputs."vidhdr-master".dir = "nimpkgs/v/vidhdr/master";
  inputs."vidhdr-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."vidhdr-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}