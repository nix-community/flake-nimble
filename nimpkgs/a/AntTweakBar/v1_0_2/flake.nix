{
  description = ''nim wrapper around the AntTweakBar c library'';
  inputs.src-AntTweakBar-v1_0_2.flake = false;
  inputs.src-AntTweakBar-v1_0_2.type = "github";
  inputs.src-AntTweakBar-v1_0_2.owner = "krux02";
  inputs.src-AntTweakBar-v1_0_2.repo = "nimAntTweakBar";
  inputs.src-AntTweakBar-v1_0_2.ref = "refs/tags/v1.0.2";
  
  outputs = { self, nixpkgs, src-AntTweakBar-v1_0_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-AntTweakBar-v1_0_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-AntTweakBar-v1_0_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}