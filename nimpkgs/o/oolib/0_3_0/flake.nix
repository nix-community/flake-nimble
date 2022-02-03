{
  description = ''A nimble package which provides user-defined types, procedures, etc...'';
  inputs.src-oolib-0_3_0.flake = false;
  inputs.src-oolib-0_3_0.type = "github";
  inputs.src-oolib-0_3_0.owner = "Glasses-Neo";
  inputs.src-oolib-0_3_0.repo = "OOlib";
  inputs.src-oolib-0_3_0.ref = "refs/tags/0.3.0";
  
  outputs = { self, nixpkgs, src-oolib-0_3_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-oolib-0_3_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-oolib-0_3_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}