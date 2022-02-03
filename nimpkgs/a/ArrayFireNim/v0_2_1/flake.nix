{
  description = ''A nim wrapper for ArrayFire'';
  inputs.src-ArrayFireNim-v0_2_1.flake = false;
  inputs.src-ArrayFireNim-v0_2_1.type = "github";
  inputs.src-ArrayFireNim-v0_2_1.owner = "bitstormGER";
  inputs.src-ArrayFireNim-v0_2_1.repo = "ArrayFire-Nim";
  inputs.src-ArrayFireNim-v0_2_1.ref = "refs/tags/v0.2.1";
  
  outputs = { self, nixpkgs, src-ArrayFireNim-v0_2_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ArrayFireNim-v0_2_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-ArrayFireNim-v0_2_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}