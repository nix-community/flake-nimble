{
  description = ''A decentralized (pseudo) package manager and script runner.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-nifty-master.flake = false;
  inputs.src-nifty-master.type = "github";
  inputs.src-nifty-master.owner = "h3rald";
  inputs.src-nifty-master.repo = "nifty";
  inputs.src-nifty-master.ref = "refs/heads/master";
  inputs.src-nifty-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nifty-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nifty-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nifty-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}