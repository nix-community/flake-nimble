{
  description = ''tnim is a Nim REPL - an interactive sandbox for testing Nim code'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-tnim-2_0_4.flake = false;
  inputs.src-tnim-2_0_4.type = "github";
  inputs.src-tnim-2_0_4.owner = "jlp765";
  inputs.src-tnim-2_0_4.repo = "tnim";
  inputs.src-tnim-2_0_4.ref = "refs/tags/2.0.4";
  inputs.src-tnim-2_0_4.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-tnim-2_0_4, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-tnim-2_0_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-tnim-2_0_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}