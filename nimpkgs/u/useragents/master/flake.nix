{
  description = ''User Agent parser for nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-useragents-master.flake = false;
  inputs.src-useragents-master.type = "github";
  inputs.src-useragents-master.owner = "treeform";
  inputs.src-useragents-master.repo = "useragents";
  inputs.src-useragents-master.ref = "refs/heads/master";
  inputs.src-useragents-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-useragents-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-useragents-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-useragents-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}