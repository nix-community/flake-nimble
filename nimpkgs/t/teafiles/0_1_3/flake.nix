{
  description = ''TeaFiles provide fast read/write access to time series data'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-teafiles-0_1_3.flake = false;
  inputs.src-teafiles-0_1_3.type = "github";
  inputs.src-teafiles-0_1_3.owner = "andreaferretti";
  inputs.src-teafiles-0_1_3.repo = "nim-teafiles";
  inputs.src-teafiles-0_1_3.ref = "refs/tags/0.1.3";
  inputs.src-teafiles-0_1_3.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-teafiles-0_1_3, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-teafiles-0_1_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-teafiles-0_1_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}