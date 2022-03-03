{
  description = ''TeaFiles provide fast read/write access to time series data'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-teafiles-0_1_2.flake = false;
  inputs.src-teafiles-0_1_2.type = "github";
  inputs.src-teafiles-0_1_2.owner = "andreaferretti";
  inputs.src-teafiles-0_1_2.repo = "nim-teafiles";
  inputs.src-teafiles-0_1_2.ref = "refs/tags/0.1.2";
  inputs.src-teafiles-0_1_2.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-teafiles-0_1_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-teafiles-0_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-teafiles-0_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}