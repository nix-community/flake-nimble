{
  description = ''Special mathematical functions in Nim'';
  inputs.src-special_functions-v0_1_1.flake = false;
  inputs.src-special_functions-v0_1_1.type = "github";
  inputs.src-special_functions-v0_1_1.owner = "ayman-albaz";
  inputs.src-special_functions-v0_1_1.repo = "special-functions";
  inputs.src-special_functions-v0_1_1.ref = "refs/tags/v0.1.1";
  
  outputs = { self, nixpkgs, src-special_functions-v0_1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-special_functions-v0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-special_functions-v0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}