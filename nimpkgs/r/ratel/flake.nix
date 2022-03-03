{
  description = ''Zero-cost abstractions for microcontrollers'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."ratel-master".type = "github";
  inputs."ratel-master".owner = "riinr";
  inputs."ratel-master".repo = "flake-nimble";
  inputs."ratel-master".ref = "flake-pinning";
  inputs."ratel-master".dir = "nimpkgs/r/ratel/master";
  inputs."ratel-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ratel-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}