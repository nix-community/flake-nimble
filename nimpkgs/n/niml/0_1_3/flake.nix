{
  description = ''html dsl'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-niml-0_1_3.flake = false;
  inputs.src-niml-0_1_3.type = "github";
  inputs.src-niml-0_1_3.owner = "jakubDoka";
  inputs.src-niml-0_1_3.repo = "niml";
  inputs.src-niml-0_1_3.ref = "refs/tags/0.1.3";
  inputs.src-niml-0_1_3.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."fusion".type = "github";
  # inputs."fusion".owner = "riinr";
  # inputs."fusion".repo = "flake-nimble";
  # inputs."fusion".ref = "flake-pinning";
  # inputs."fusion".dir = "nimpkgs/f/fusion";
  # inputs."fusion".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."fusion".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-niml-0_1_3, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-niml-0_1_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-niml-0_1_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}