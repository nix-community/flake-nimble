{
  description = ''A nimble package which provides user-defined types, procedures, etc...'';
  inputs.src-oolib-develop.flake = false;
  inputs.src-oolib-develop.type = "github";
  inputs.src-oolib-develop.owner = "Glasses-Neo";
  inputs.src-oolib-develop.repo = "OOlib";
  inputs.src-oolib-develop.ref = "refs/heads/develop";
  
  outputs = { self, nixpkgs, src-oolib-develop, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-oolib-develop;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-oolib-develop"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}