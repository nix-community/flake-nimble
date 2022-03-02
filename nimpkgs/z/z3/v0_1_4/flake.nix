{
  description = ''Nim Z3 theorem prover bindings'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-z3-v0_1_4.flake = false;
  inputs.src-z3-v0_1_4.type = "github";
  inputs.src-z3-v0_1_4.owner = "zevv";
  inputs.src-z3-v0_1_4.repo = "nimz3";
  inputs.src-z3-v0_1_4.ref = "refs/tags/v0.1.4";
  inputs.src-z3-v0_1_4.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-z3-v0_1_4, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-z3-v0_1_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-z3-v0_1_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}