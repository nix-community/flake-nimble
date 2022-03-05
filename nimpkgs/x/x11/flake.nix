{
  description = ''Wrapper for X11'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."x11-master".type = "github";
  inputs."x11-master".owner = "riinr";
  inputs."x11-master".repo = "flake-nimble";
  inputs."x11-master".ref = "flake-pinning";
  inputs."x11-master".dir = "nimpkgs/x/x11/master";
  inputs."x11-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."x11-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}