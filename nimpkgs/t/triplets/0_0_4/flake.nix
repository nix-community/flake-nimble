{
  description = ''The Nim bindings for linksplatform/Data.Triplets.Kernel.'';
  inputs.src-triplets-0_0_4.flake = false;
  inputs.src-triplets-0_0_4.type = "github";
  inputs.src-triplets-0_0_4.owner = "linksplatform";
  inputs.src-triplets-0_0_4.repo = "Data.Triplets";
  inputs.src-triplets-0_0_4.ref = "refs/tags/0.0.4";
  
  outputs = { self, nixpkgs, src-triplets-0_0_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-triplets-0_0_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-triplets-0_0_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}