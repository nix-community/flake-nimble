{
  description = ''Everything you want to do with colors.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-chroma-master.flake = false;
  inputs.src-chroma-master.type = "github";
  inputs.src-chroma-master.owner = "treeform";
  inputs.src-chroma-master.repo = "chroma";
  inputs.src-chroma-master.ref = "refs/heads/master";
  inputs.src-chroma-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-chroma-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-chroma-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-chroma-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}