{
  description = ''The Nim bindings for linksplatform/Data.Triplets.Kernel.'';
  inputs.src-triplets-0_0_5.flake = false;
  inputs.src-triplets-0_0_5.type = "github";
  inputs.src-triplets-0_0_5.owner = "linksplatform";
  inputs.src-triplets-0_0_5.repo = "Data.Triplets";
  inputs.src-triplets-0_0_5.ref = "refs/tags/0.0.5";
  
  outputs = { self, nixpkgs, src-triplets-0_0_5, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-triplets-0_0_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-triplets-0_0_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}