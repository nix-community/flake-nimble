{
  description = ''Bindings for Miniz lib.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-miniz-0_2_0.flake = false;
  inputs.src-miniz-0_2_0.type = "github";
  inputs.src-miniz-0_2_0.owner = "treeform";
  inputs.src-miniz-0_2_0.repo = "miniz";
  inputs.src-miniz-0_2_0.ref = "refs/tags/0.2.0";
  inputs.src-miniz-0_2_0.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-miniz-0_2_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-miniz-0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-miniz-0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}