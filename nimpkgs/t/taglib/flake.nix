{
  description = ''TagLib Audio Meta-Data Library wrapper'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."taglib-master".type = "github";
  inputs."taglib-master".owner = "riinr";
  inputs."taglib-master".repo = "flake-nimble";
  inputs."taglib-master".ref = "flake-pinning";
  inputs."taglib-master".dir = "nimpkgs/t/taglib/master";
  inputs."taglib-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."taglib-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}