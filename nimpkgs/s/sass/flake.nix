{
  description = ''A wrapper for the libsass library.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."sass-master".type = "github";
  inputs."sass-master".owner = "riinr";
  inputs."sass-master".repo = "flake-nimble";
  inputs."sass-master".ref = "flake-pinning";
  inputs."sass-master".dir = "nimpkgs/s/sass/master";
  inputs."sass-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sass-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}