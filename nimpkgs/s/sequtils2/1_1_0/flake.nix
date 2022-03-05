{
  description = ''Additional functions for sequences that are not present in sequtils'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-sequtils2-1_1_0.flake = false;
  inputs.src-sequtils2-1_1_0.type = "github";
  inputs.src-sequtils2-1_1_0.owner = "Michedev";
  inputs.src-sequtils2-1_1_0.repo = "sequtils2";
  inputs.src-sequtils2-1_1_0.ref = "refs/tags/1.1.0";
  inputs.src-sequtils2-1_1_0.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-sequtils2-1_1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sequtils2-1_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-sequtils2-1_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}