{
  description = ''A nim wrapper for ArrayFire'';
  inputs.src-ArrayFireNim-v0_2_2.flake = false;
  inputs.src-ArrayFireNim-v0_2_2.type = "github";
  inputs.src-ArrayFireNim-v0_2_2.owner = "bitstormGER";
  inputs.src-ArrayFireNim-v0_2_2.repo = "ArrayFire-Nim";
  inputs.src-ArrayFireNim-v0_2_2.ref = "refs/tags/v0.2.2";
  
  outputs = { self, nixpkgs, src-ArrayFireNim-v0_2_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ArrayFireNim-v0_2_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-ArrayFireNim-v0_2_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}