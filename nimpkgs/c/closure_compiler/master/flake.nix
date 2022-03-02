{
  description = ''Bindings for Closure Compiler web API.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-closure_compiler-master.flake = false;
  inputs.src-closure_compiler-master.type = "github";
  inputs.src-closure_compiler-master.owner = "yglukhov";
  inputs.src-closure_compiler-master.repo = "closure_compiler";
  inputs.src-closure_compiler-master.ref = "refs/heads/master";
  inputs.src-closure_compiler-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-closure_compiler-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-closure_compiler-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-closure_compiler-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}