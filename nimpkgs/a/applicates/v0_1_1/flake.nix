{
  description = ''"pointers" to cached AST that instantiate routines when called'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-applicates-v0_1_1.flake = false;
  inputs.src-applicates-v0_1_1.type = "github";
  inputs.src-applicates-v0_1_1.owner = "metagn";
  inputs.src-applicates-v0_1_1.repo = "applicates";
  inputs.src-applicates-v0_1_1.ref = "refs/tags/v0.1.1";
  inputs.src-applicates-v0_1_1.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-applicates-v0_1_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-applicates-v0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-applicates-v0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}