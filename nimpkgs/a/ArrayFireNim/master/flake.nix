{
  description = ''A nim wrapper for ArrayFire'';
  inputs.src-ArrayFireNim-master.flake = false;
  inputs.src-ArrayFireNim-master.type = "github";
  inputs.src-ArrayFireNim-master.owner = "bitstormGER";
  inputs.src-ArrayFireNim-master.repo = "ArrayFire-Nim";
  inputs.src-ArrayFireNim-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-ArrayFireNim-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ArrayFireNim-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-ArrayFireNim-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}