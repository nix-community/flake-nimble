{
  description = ''tnim is a Nim REPL - an interactive sandbox for testing Nim code'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-tnim-v2_0_6.flake = false;
  inputs.src-tnim-v2_0_6.type = "github";
  inputs.src-tnim-v2_0_6.owner = "jlp765";
  inputs.src-tnim-v2_0_6.repo = "tnim";
  inputs.src-tnim-v2_0_6.ref = "refs/tags/v2.0.6";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-tnim-v2_0_6, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-tnim-v2_0_6;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-tnim-v2_0_6"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}