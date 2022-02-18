{
  description = ''html dsl'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-niml-0_1_2.flake = false;
  inputs.src-niml-0_1_2.type = "github";
  inputs.src-niml-0_1_2.owner = "jakubDoka";
  inputs.src-niml-0_1_2.repo = "niml";
  inputs.src-niml-0_1_2.ref = "refs/tags/0.1.2";
  
  
  inputs."fusion".type = "github";
  inputs."fusion".owner = "riinr";
  inputs."fusion".repo = "flake-nimble";
  inputs."fusion".ref = "flake-pinning";
  inputs."fusion".dir = "nimpkgs/f/fusion";

  outputs = { self, nixpkgs, flakeNimbleLib, src-niml-0_1_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-niml-0_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-niml-0_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}