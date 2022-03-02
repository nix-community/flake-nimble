{
  description = ''Simplified handling of command line options and config files'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."confutils-master".type = "github";
  inputs."confutils-master".owner = "riinr";
  inputs."confutils-master".repo = "flake-nimble";
  inputs."confutils-master".ref = "flake-pinning";
  inputs."confutils-master".dir = "nimpkgs/c/confutils/master";
  inputs."confutils-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."confutils-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}