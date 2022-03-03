{
  description = ''Library for attaching files to emails.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-mime-v0_0_3.flake = false;
  inputs.src-mime-v0_0_3.type = "github";
  inputs.src-mime-v0_0_3.owner = "enthus1ast";
  inputs.src-mime-v0_0_3.repo = "nimMime";
  inputs.src-mime-v0_0_3.ref = "refs/tags/v0.0.3";
  inputs.src-mime-v0_0_3.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-mime-v0_0_3, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-mime-v0_0_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-mime-v0_0_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}