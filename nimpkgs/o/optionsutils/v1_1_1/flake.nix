{
  description = ''Utility macros for easier handling of options in Nim'';
  inputs.src-optionsutils-v1_1_1.flake = false;
  inputs.src-optionsutils-v1_1_1.type = "github";
  inputs.src-optionsutils-v1_1_1.owner = "PMunch";
  inputs.src-optionsutils-v1_1_1.repo = "nim-optionsutils";
  inputs.src-optionsutils-v1_1_1.ref = "refs/tags/v1.1.1";
  
  outputs = { self, nixpkgs, src-optionsutils-v1_1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-optionsutils-v1_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-optionsutils-v1_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}