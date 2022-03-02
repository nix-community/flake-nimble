{
  description = ''Decision tree and Random forest CART implementation in Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."decisiontree-master".type = "github";
  inputs."decisiontree-master".owner = "riinr";
  inputs."decisiontree-master".repo = "flake-nimble";
  inputs."decisiontree-master".ref = "flake-pinning";
  inputs."decisiontree-master".dir = "nimpkgs/d/decisiontree/master";
  inputs."decisiontree-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."decisiontree-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}