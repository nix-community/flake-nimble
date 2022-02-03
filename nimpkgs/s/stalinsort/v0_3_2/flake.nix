{
  description = ''A Nim implementation of the Stalin Sort algorithm.'';
  inputs.src-stalinsort-v0_3_2.flake = false;
  inputs.src-stalinsort-v0_3_2.type = "github";
  inputs.src-stalinsort-v0_3_2.owner = "tonogram";
  inputs.src-stalinsort-v0_3_2.repo = "stalinsort";
  inputs.src-stalinsort-v0_3_2.ref = "refs/tags/v0.3.2";
  
  outputs = { self, nixpkgs, src-stalinsort-v0_3_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-stalinsort-v0_3_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-stalinsort-v0_3_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}