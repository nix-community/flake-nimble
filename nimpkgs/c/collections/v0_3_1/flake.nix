{
  description = ''Various collections and utilities'';
  inputs.src-collections-v0_3_1.flake = false;
  inputs.src-collections-v0_3_1.type = "github";
  inputs.src-collections-v0_3_1.owner = "zielmicha";
  inputs.src-collections-v0_3_1.repo = "collections.nim";
  inputs.src-collections-v0_3_1.ref = "refs/tags/v0.3.1";
  
  outputs = { self, nixpkgs, src-collections-v0_3_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-collections-v0_3_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-collections-v0_3_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}