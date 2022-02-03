{
  description = ''A simple pomodoro timer for the comandline with cli-output and notifications.'';
  inputs.src-pomTimer-master.flake = false;
  inputs.src-pomTimer-master.type = "github";
  inputs.src-pomTimer-master.owner = "MnlPhlp";
  inputs.src-pomTimer-master.repo = "pomTimer";
  inputs.src-pomTimer-master.ref = "refs/heads/master";
  
  
  inputs."progress".url = "path:../../../p/progress";
  inputs."progress".type = "github";
  inputs."progress".owner = "riinr";
  inputs."progress".repo = "flake-nimble";
  inputs."progress".ref = "flake-pinning";
  inputs."progress".dir = "nimpkgs/p/progress";

  
  inputs."notify".url = "path:../../../n/notify";
  inputs."notify".type = "github";
  inputs."notify".owner = "riinr";
  inputs."notify".repo = "flake-nimble";
  inputs."notify".ref = "flake-pinning";
  inputs."notify".dir = "nimpkgs/n/notify";

  outputs = { self, nixpkgs, src-pomTimer-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pomTimer-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-pomTimer-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}