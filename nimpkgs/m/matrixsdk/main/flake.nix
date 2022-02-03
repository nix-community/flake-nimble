{
  description = ''A Matrix (https://matrix.org) client and appservice API wrapper for Nim!'';
  inputs.src-matrixsdk-main.flake = false;
  inputs.src-matrixsdk-main.type = "github";
  inputs.src-matrixsdk-main.owner = "dylhack";
  inputs.src-matrixsdk-main.repo = "matrix-nim-sdk";
  inputs.src-matrixsdk-main.ref = "refs/heads/main";
  
  outputs = { self, nixpkgs, src-matrixsdk-main, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-matrixsdk-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-matrixsdk-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}