{
  description = ''Boilerplate generator for Jester web framework'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-gen-master.flake = false;
  inputs.src-gen-master.type = "github";
  inputs.src-gen-master.owner = "Adeohluwa";
  inputs.src-gen-master.repo = "gen";
  inputs.src-gen-master.ref = "refs/heads/master";
  inputs.src-gen-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."progress".type = "github";
  inputs."progress".owner = "riinr";
  inputs."progress".repo = "flake-nimble";
  inputs."progress".ref = "flake-pinning";
  inputs."progress".dir = "nimpkgs/p/progress";
  inputs."progress".inputs.nixpkgs.follows = "nixpkgs";
  inputs."progress".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."docopt".type = "github";
  inputs."docopt".owner = "riinr";
  inputs."docopt".repo = "flake-nimble";
  inputs."docopt".ref = "flake-pinning";
  inputs."docopt".dir = "nimpkgs/d/docopt";
  inputs."docopt".inputs.nixpkgs.follows = "nixpkgs";
  inputs."docopt".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."fab".type = "github";
  inputs."fab".owner = "riinr";
  inputs."fab".repo = "flake-nimble";
  inputs."fab".ref = "flake-pinning";
  inputs."fab".dir = "nimpkgs/f/fab";
  inputs."fab".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fab".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."gara".type = "github";
  inputs."gara".owner = "riinr";
  inputs."gara".repo = "flake-nimble";
  inputs."gara".ref = "flake-pinning";
  inputs."gara".dir = "nimpkgs/g/gara";
  inputs."gara".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gara".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-gen-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-gen-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-gen-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}