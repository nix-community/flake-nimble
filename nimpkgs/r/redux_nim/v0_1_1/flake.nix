{
  description = ''Redux Implementation in nim'';
  inputs.src-redux_nim-v0_1_1.flake = false;
  inputs.src-redux_nim-v0_1_1.type = "github";
  inputs.src-redux_nim-v0_1_1.owner = "M4RC3L05";
  inputs.src-redux_nim-v0_1_1.repo = "redux-nim";
  inputs.src-redux_nim-v0_1_1.ref = "refs/tags/v0.1.1";
  
  outputs = { self, nixpkgs, src-redux_nim-v0_1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-redux_nim-v0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-redux_nim-v0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}