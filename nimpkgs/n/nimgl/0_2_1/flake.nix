{
  description = ''Nim Game Library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-nimgl-0_2_1.flake = false;
  inputs.src-nimgl-0_2_1.type = "github";
  inputs.src-nimgl-0_2_1.owner = "nimgl";
  inputs.src-nimgl-0_2_1.repo = "nimgl";
  inputs.src-nimgl-0_2_1.ref = "refs/tags/0.2.1";
  inputs.src-nimgl-0_2_1.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimgl-0_2_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimgl-0_2_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimgl-0_2_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}