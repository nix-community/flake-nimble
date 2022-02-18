{
  description = ''LLVM bindings for the Nim language.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-llvm-master.flake = false;
  inputs.src-llvm-master.type = "github";
  inputs.src-llvm-master.owner = "FedeOmoto";
  inputs.src-llvm-master.repo = "llvm";
  inputs.src-llvm-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-LLVM-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-LLVM-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-LLVM-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}