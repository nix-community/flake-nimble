{
  description = ''The Nim bindings for linksplatform/Data.Triplets.Kernel.'';
  inputs.src-triplets-0_0_2.flake = false;
  inputs.src-triplets-0_0_2.type = "github";
  inputs.src-triplets-0_0_2.owner = "linksplatform";
  inputs.src-triplets-0_0_2.repo = "Data.Triplets";
  inputs.src-triplets-0_0_2.ref = "refs/tags/0.0.2";
  
  outputs = { self, nixpkgs, src-triplets-0_0_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-triplets-0_0_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-triplets-0_0_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}