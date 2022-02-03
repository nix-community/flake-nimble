{
  description = ''The Nim bindings for linksplatform/Data.Triplets.Kernel.'';
  inputs.src-triplets-0_0_7.flake = false;
  inputs.src-triplets-0_0_7.type = "github";
  inputs.src-triplets-0_0_7.owner = "linksplatform";
  inputs.src-triplets-0_0_7.repo = "Data.Triplets";
  inputs.src-triplets-0_0_7.ref = "refs/tags/0.0.7";
  
  outputs = { self, nixpkgs, src-triplets-0_0_7, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-triplets-0_0_7;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-triplets-0_0_7"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}