{
  description = ''experiment to build a jinja like template parser'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."nwt-master".type = "github";
  inputs."nwt-master".owner = "riinr";
  inputs."nwt-master".repo = "flake-nimble";
  inputs."nwt-master".ref = "flake-pinning";
  inputs."nwt-master".dir = "nimpkgs/n/nwt/master";
  inputs."nwt-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nwt-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}