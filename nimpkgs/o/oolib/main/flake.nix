{
  description = ''A nimble package which provides user-defined types, procedures, etc...'';
  inputs.src-oolib-main.flake = false;
  inputs.src-oolib-main.type = "github";
  inputs.src-oolib-main.owner = "Glasses-Neo";
  inputs.src-oolib-main.repo = "OOlib";
  inputs.src-oolib-main.ref = "refs/heads/main";
  
  outputs = { self, nixpkgs, src-oolib-main, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-oolib-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-oolib-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}