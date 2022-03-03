{
  description = ''A miniblink library for nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-miniblink-master.flake = false;
  inputs.src-miniblink-master.type = "github";
  inputs.src-miniblink-master.owner = "lihf8515";
  inputs.src-miniblink-master.repo = "miniblink";
  inputs.src-miniblink-master.ref = "refs/heads/master";
  inputs.src-miniblink-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-miniblink-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-miniblink-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-miniblink-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}