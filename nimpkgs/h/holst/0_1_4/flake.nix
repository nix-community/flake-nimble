{
  description = ''A parser for Jupyter notebooks.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-holst-0_1_4.flake = false;
  inputs.src-holst-0_1_4.type = "github";
  inputs.src-holst-0_1_4.owner = "ruivieira";
  inputs.src-holst-0_1_4.repo = "nim-holst";
  inputs.src-holst-0_1_4.ref = "refs/tags/0.1.4";
  inputs.src-holst-0_1_4.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-holst-0_1_4, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-holst-0_1_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-holst-0_1_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}