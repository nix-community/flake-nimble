{
  description = ''A parser for Jupyter notebooks.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-holst-0_1_2.flake = false;
  inputs.src-holst-0_1_2.type = "github";
  inputs.src-holst-0_1_2.owner = "ruivieira";
  inputs.src-holst-0_1_2.repo = "nim-holst";
  inputs.src-holst-0_1_2.ref = "refs/tags/0.1.2";
  inputs.src-holst-0_1_2.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-holst-0_1_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-holst-0_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-holst-0_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}