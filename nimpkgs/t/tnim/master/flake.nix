{
  description = ''tnim is a Nim REPL - an interactive sandbox for testing Nim code'';
  inputs.src-tnim-master.flake = false;
  inputs.src-tnim-master.type = "github";
  inputs.src-tnim-master.owner = "jlp765";
  inputs.src-tnim-master.repo = "tnim";
  inputs.src-tnim-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-tnim-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-tnim-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-tnim-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}