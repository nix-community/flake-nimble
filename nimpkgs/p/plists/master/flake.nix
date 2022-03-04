{
  description = ''Generate and parse Mac OS X .plist files in Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-plists-master.flake = false;
  inputs.src-plists-master.type = "github";
  inputs.src-plists-master.owner = "yglukhov";
  inputs.src-plists-master.repo = "plists";
  inputs.src-plists-master.ref = "refs/heads/master";
  inputs.src-plists-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."darwin".type = "github";
  inputs."darwin".owner = "riinr";
  inputs."darwin".repo = "flake-nimble";
  inputs."darwin".ref = "flake-pinning";
  inputs."darwin".dir = "nimpkgs/d/darwin";
  inputs."darwin".inputs.nixpkgs.follows = "nixpkgs";
  inputs."darwin".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-plists-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-plists-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-plists-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}