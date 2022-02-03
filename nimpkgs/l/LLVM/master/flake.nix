{
  description = ''LLVM bindings for the Nim language.'';
  inputs.src-llvm-master.flake = false;
  inputs.src-llvm-master.type = "github";
  inputs.src-llvm-master.owner = "FedeOmoto";
  inputs.src-llvm-master.repo = "llvm";
  inputs.src-llvm-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-LLVM-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-LLVM-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-LLVM-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}