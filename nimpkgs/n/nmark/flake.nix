{
  description = ''fast markdown parser'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nmark-develop".type = "github";
  inputs."nmark-develop".owner = "riinr";
  inputs."nmark-develop".repo = "flake-nimble";
  inputs."nmark-develop".ref = "flake-pinning";
  inputs."nmark-develop".dir = "nimpkgs/n/nmark/develop";
  inputs."nmark-develop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nmark-develop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."nmark-master".type = "github";
  inputs."nmark-master".owner = "riinr";
  inputs."nmark-master".repo = "flake-nimble";
  inputs."nmark-master".ref = "flake-pinning";
  inputs."nmark-master".dir = "nimpkgs/n/nmark/master";
  inputs."nmark-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nmark-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}