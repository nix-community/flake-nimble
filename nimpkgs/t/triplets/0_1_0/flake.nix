{
  description = ''The Nim bindings for linksplatform/Data.Triplets.Kernel.'';
  inputs.src-triplets-0_1_0.flake = false;
  inputs.src-triplets-0_1_0.type = "github";
  inputs.src-triplets-0_1_0.owner = "linksplatform";
  inputs.src-triplets-0_1_0.repo = "Data.Triplets";
  inputs.src-triplets-0_1_0.ref = "refs/tags/0.1.0";
  
  outputs = { self, nixpkgs, src-triplets-0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-triplets-0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-triplets-0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}