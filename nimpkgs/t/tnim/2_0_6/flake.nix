{
  description = ''tnim is a Nim REPL - an interactive sandbox for testing Nim code'';
  inputs.src-tnim-2_0_6.flake = false;
  inputs.src-tnim-2_0_6.type = "github";
  inputs.src-tnim-2_0_6.owner = "jlp765";
  inputs.src-tnim-2_0_6.repo = "tnim";
  inputs.src-tnim-2_0_6.ref = "refs/tags/2.0.6";
  
  outputs = { self, nixpkgs, src-tnim-2_0_6, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-tnim-2_0_6;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-tnim-2_0_6"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}