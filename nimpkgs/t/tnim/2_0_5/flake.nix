{
  description = ''tnim is a Nim REPL - an interactive sandbox for testing Nim code'';
  inputs.src-tnim-2_0_5.flake = false;
  inputs.src-tnim-2_0_5.type = "github";
  inputs.src-tnim-2_0_5.owner = "jlp765";
  inputs.src-tnim-2_0_5.repo = "tnim";
  inputs.src-tnim-2_0_5.ref = "refs/tags/2.0.5";
  
  outputs = { self, nixpkgs, src-tnim-2_0_5, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-tnim-2_0_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-tnim-2_0_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}