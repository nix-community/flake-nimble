{
  description = ''A library for straightforward diff calculation'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."simplediff-master".type = "github";
  inputs."simplediff-master".owner = "riinr";
  inputs."simplediff-master".repo = "flake-nimble";
  inputs."simplediff-master".ref = "flake-pinning";
  inputs."simplediff-master".dir = "nimpkgs/s/simplediff/master";
  inputs."simplediff-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."simplediff-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}