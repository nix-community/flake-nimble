{
  description = ''A simple library for paging, similar to less'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-pager-master.flake = false;
  inputs.src-pager-master.type = "other";
  inputs.src-pager-master.owner = "~reesmichael1";
  inputs.src-pager-master.repo = "nim-pager";
  inputs.src-pager-master.ref = "refs/heads/master";
  inputs.src-pager-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-pager-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pager-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-pager-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}