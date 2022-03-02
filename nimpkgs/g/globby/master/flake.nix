{
  description = ''Glob pattern matching for Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-globby-master.flake = false;
  inputs.src-globby-master.type = "github";
  inputs.src-globby-master.owner = "treeform";
  inputs.src-globby-master.repo = "globby";
  inputs.src-globby-master.ref = "refs/heads/master";
  inputs.src-globby-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-globby-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-globby-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-globby-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}