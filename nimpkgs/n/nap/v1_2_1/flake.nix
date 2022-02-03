{
  description = ''Argument parser'';
  inputs.src-nap-v1_2_1.flake = false;
  inputs.src-nap-v1_2_1.type = "github";
  inputs.src-nap-v1_2_1.owner = "madprops";
  inputs.src-nap-v1_2_1.repo = "nap";
  inputs.src-nap-v1_2_1.ref = "refs/tags/v1.2.1";
  
  outputs = { self, nixpkgs, src-nap-v1_2_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nap-v1_2_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nap-v1_2_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}