{
  description = ''Youtube data extractor'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."ytextractor-master".type = "github";
  inputs."ytextractor-master".owner = "riinr";
  inputs."ytextractor-master".repo = "flake-nimble";
  inputs."ytextractor-master".ref = "flake-pinning";
  inputs."ytextractor-master".dir = "nimpkgs/y/ytextractor/master";
  inputs."ytextractor-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ytextractor-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}