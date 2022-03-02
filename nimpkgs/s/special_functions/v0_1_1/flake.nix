{
  description = ''Special mathematical functions in Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-special_functions-v0_1_1.flake = false;
  inputs.src-special_functions-v0_1_1.type = "github";
  inputs.src-special_functions-v0_1_1.owner = "ayman-albaz";
  inputs.src-special_functions-v0_1_1.repo = "special-functions";
  inputs.src-special_functions-v0_1_1.ref = "refs/tags/v0.1.1";
  inputs.src-special_functions-v0_1_1.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-special_functions-v0_1_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-special_functions-v0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-special_functions-v0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}