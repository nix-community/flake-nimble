{
  description = ''A library providing zero-cost chaining for functional abstractions in Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-zero_functional-master.flake = false;
  inputs.src-zero_functional-master.type = "github";
  inputs.src-zero_functional-master.owner = "zero-functional";
  inputs.src-zero_functional-master.repo = "zero-functional";
  inputs.src-zero_functional-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-zero_functional-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-zero_functional-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-zero_functional-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}