{
  description = ''A simple pomodoro timer for the comandline with cli-output and notifications.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-pomTimer-master.flake = false;
  inputs.src-pomTimer-master.type = "github";
  inputs.src-pomTimer-master.owner = "MnlPhlp";
  inputs.src-pomTimer-master.repo = "pomTimer";
  inputs.src-pomTimer-master.ref = "refs/heads/master";
  inputs.src-pomTimer-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."progress".type = "github";
  inputs."progress".owner = "riinr";
  inputs."progress".repo = "flake-nimble";
  inputs."progress".ref = "flake-pinning";
  inputs."progress".dir = "nimpkgs/p/progress";
  inputs."progress".inputs.nixpkgs.follows = "nixpkgs";
  inputs."progress".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."notify".type = "github";
  inputs."notify".owner = "riinr";
  inputs."notify".repo = "flake-nimble";
  inputs."notify".ref = "flake-pinning";
  inputs."notify".dir = "nimpkgs/n/notify";
  inputs."notify".inputs.nixpkgs.follows = "nixpkgs";
  inputs."notify".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-pomTimer-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pomTimer-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-pomTimer-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}