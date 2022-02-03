{
  description = ''A nim wrapper for ArrayFire'';
  inputs.src-ArrayFireNim-v0_1_0.flake = false;
  inputs.src-ArrayFireNim-v0_1_0.type = "github";
  inputs.src-ArrayFireNim-v0_1_0.owner = "bitstormGER";
  inputs.src-ArrayFireNim-v0_1_0.repo = "ArrayFire-Nim";
  inputs.src-ArrayFireNim-v0_1_0.ref = "refs/tags/v0.1.0";
  
  outputs = { self, nixpkgs, src-ArrayFireNim-v0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ArrayFireNim-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-ArrayFireNim-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}