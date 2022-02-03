{
  description = ''A Nim implementation of the Stalin Sort algorithm.'';
  inputs.src-stalinsort-v0_3_1.flake = false;
  inputs.src-stalinsort-v0_3_1.type = "github";
  inputs.src-stalinsort-v0_3_1.owner = "tonogram";
  inputs.src-stalinsort-v0_3_1.repo = "stalinsort";
  inputs.src-stalinsort-v0_3_1.ref = "refs/tags/v0.3.1";
  
  outputs = { self, nixpkgs, src-stalinsort-v0_3_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-stalinsort-v0_3_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-stalinsort-v0_3_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}