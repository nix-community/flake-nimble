{
  description = ''Library for finding the differences between two sequences'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-diff-master.flake = false;
  inputs.src-diff-master.type = "github";
  inputs.src-diff-master.owner = "mark-summerfield";
  inputs.src-diff-master.repo = "diff";
  inputs.src-diff-master.ref = "refs/heads/master";
  inputs.src-diff-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-diff-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-diff-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-diff-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}