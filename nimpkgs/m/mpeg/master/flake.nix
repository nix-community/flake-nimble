{
  description = ''Nim wrapper for pl_mpeg single header mpeg library.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-mpeg-master.flake = false;
  inputs.src-mpeg-master.type = "github";
  inputs.src-mpeg-master.owner = "treeform";
  inputs.src-mpeg-master.repo = "mpeg";
  inputs.src-mpeg-master.ref = "refs/heads/master";
  inputs.src-mpeg-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-mpeg-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-mpeg-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-mpeg-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}