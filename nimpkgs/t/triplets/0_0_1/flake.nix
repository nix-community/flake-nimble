{
  description = ''The Nim bindings for linksplatform/Data.Triplets.Kernel.'';
  inputs.src-triplets-0_0_1.flake = false;
  inputs.src-triplets-0_0_1.type = "github";
  inputs.src-triplets-0_0_1.owner = "linksplatform";
  inputs.src-triplets-0_0_1.repo = "Data.Triplets";
  inputs.src-triplets-0_0_1.ref = "refs/tags/0.0.1";
  
  outputs = { self, nixpkgs, src-triplets-0_0_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-triplets-0_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-triplets-0_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}