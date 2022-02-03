{
  description = ''Bindings for Closure Compiler web API.'';
  inputs.src-closure_compiler-master.flake = false;
  inputs.src-closure_compiler-master.type = "github";
  inputs.src-closure_compiler-master.owner = "yglukhov";
  inputs.src-closure_compiler-master.repo = "closure_compiler";
  inputs.src-closure_compiler-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-closure_compiler-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-closure_compiler-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-closure_compiler-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}