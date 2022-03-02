{
  description = ''A simple library for paging, similar to less'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."pager-master".type = "github";
  inputs."pager-master".owner = "riinr";
  inputs."pager-master".repo = "flake-nimble";
  inputs."pager-master".ref = "flake-pinning";
  inputs."pager-master".dir = "nimpkgs/p/pager/master";
  inputs."pager-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pager-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}