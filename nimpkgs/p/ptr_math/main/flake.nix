{
  description = ''Pointer arithmetic library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-ptr_math-main.flake = false;
  inputs.src-ptr_math-main.type = "github";
  inputs.src-ptr_math-main.owner = "kaushalmodi";
  inputs.src-ptr_math-main.repo = "ptr_math";
  inputs.src-ptr_math-main.ref = "refs/heads/main";
  inputs.src-ptr_math-main.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-ptr_math-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ptr_math-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-ptr_math-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}