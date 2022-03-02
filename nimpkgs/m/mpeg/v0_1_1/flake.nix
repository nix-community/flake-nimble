{
  description = ''Nim wrapper for pl_mpeg single header mpeg library.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-mpeg-v0_1_1.flake = false;
  inputs.src-mpeg-v0_1_1.type = "github";
  inputs.src-mpeg-v0_1_1.owner = "treeform";
  inputs.src-mpeg-v0_1_1.repo = "mpeg";
  inputs.src-mpeg-v0_1_1.ref = "refs/tags/v0.1.1";
  inputs.src-mpeg-v0_1_1.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-mpeg-v0_1_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-mpeg-v0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-mpeg-v0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}