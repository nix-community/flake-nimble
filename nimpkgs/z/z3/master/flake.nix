{
  description = ''Nim Z3 theorem prover bindings'';
  inputs.src-z3-master.flake = false;
  inputs.src-z3-master.type = "github";
  inputs.src-z3-master.owner = "zevv";
  inputs.src-z3-master.repo = "nimz3";
  inputs.src-z3-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-z3-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-z3-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-z3-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}