{
  description = ''URL and URI parsing for C and JS backend.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-urlly-master.flake = false;
  inputs.src-urlly-master.type = "github";
  inputs.src-urlly-master.owner = "treeform";
  inputs.src-urlly-master.repo = "urlly";
  inputs.src-urlly-master.ref = "refs/heads/master";
  inputs.src-urlly-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-urlly-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-urlly-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-urlly-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}