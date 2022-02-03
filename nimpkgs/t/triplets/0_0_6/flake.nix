{
  description = ''The Nim bindings for linksplatform/Data.Triplets.Kernel.'';
  inputs.src-triplets-0_0_6.flake = false;
  inputs.src-triplets-0_0_6.type = "github";
  inputs.src-triplets-0_0_6.owner = "linksplatform";
  inputs.src-triplets-0_0_6.repo = "Data.Triplets";
  inputs.src-triplets-0_0_6.ref = "refs/tags/0.0.6";
  
  outputs = { self, nixpkgs, src-triplets-0_0_6, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-triplets-0_0_6;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-triplets-0_0_6"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}