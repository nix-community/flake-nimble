{
  description = ''Various asynchronous tools for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-asynctools-master.flake = false;
  inputs.src-asynctools-master.type = "github";
  inputs.src-asynctools-master.owner = "cheatfate";
  inputs.src-asynctools-master.repo = "asynctools";
  inputs.src-asynctools-master.ref = "refs/heads/master";
  inputs.src-asynctools-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-asynctools-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-asynctools-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-asynctools-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}