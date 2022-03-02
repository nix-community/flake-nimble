{
  description = ''A Matrix (https://matrix.org) client and appservice API wrapper for Nim!'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-matrixsdk-main.flake = false;
  inputs.src-matrixsdk-main.type = "github";
  inputs.src-matrixsdk-main.owner = "dylhack";
  inputs.src-matrixsdk-main.repo = "matrix-nim-sdk";
  inputs.src-matrixsdk-main.ref = "refs/heads/main";
  inputs.src-matrixsdk-main.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-matrixsdk-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-matrixsdk-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-matrixsdk-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}