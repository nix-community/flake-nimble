{
  description = ''Utility macros for easier handling of options in Nim'';
  inputs.src-optionsutils-v1_1_2.flake = false;
  inputs.src-optionsutils-v1_1_2.type = "github";
  inputs.src-optionsutils-v1_1_2.owner = "PMunch";
  inputs.src-optionsutils-v1_1_2.repo = "nim-optionsutils";
  inputs.src-optionsutils-v1_1_2.ref = "refs/tags/v1.1.2";
  
  outputs = { self, nixpkgs, src-optionsutils-v1_1_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-optionsutils-v1_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-optionsutils-v1_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}