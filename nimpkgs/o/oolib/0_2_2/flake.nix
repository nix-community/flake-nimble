{
  description = ''A nimble package which provides user-defined types, procedures, etc...'';
  inputs.src-oolib-0_2_2.flake = false;
  inputs.src-oolib-0_2_2.type = "github";
  inputs.src-oolib-0_2_2.owner = "Glasses-Neo";
  inputs.src-oolib-0_2_2.repo = "OOlib";
  inputs.src-oolib-0_2_2.ref = "refs/tags/0.2.2";
  
  outputs = { self, nixpkgs, src-oolib-0_2_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-oolib-0_2_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-oolib-0_2_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}