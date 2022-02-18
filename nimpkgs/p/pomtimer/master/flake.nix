{
  description = ''A simple pomodoro timer for the comandline with cli-output and notifications.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-pomtimer-master.flake = false;
  inputs.src-pomtimer-master.type = "github";
  inputs.src-pomtimer-master.owner = "MnlPhlp";
  inputs.src-pomtimer-master.repo = "pomTimer";
  inputs.src-pomtimer-master.ref = "refs/heads/master";
  
  
  inputs."progress".type = "github";
  inputs."progress".owner = "riinr";
  inputs."progress".repo = "flake-nimble";
  inputs."progress".ref = "flake-pinning";
  inputs."progress".dir = "nimpkgs/p/progress";

  
  inputs."notify".type = "github";
  inputs."notify".owner = "riinr";
  inputs."notify".repo = "flake-nimble";
  inputs."notify".ref = "flake-pinning";
  inputs."notify".dir = "nimpkgs/n/notify";

  outputs = { self, nixpkgs, flakeNimbleLib, src-pomtimer-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pomtimer-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-pomtimer-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}