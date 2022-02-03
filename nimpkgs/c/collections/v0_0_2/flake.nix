{
  description = ''Various collections and utilities'';
  inputs.src-collections-v0_0_2.flake = false;
  inputs.src-collections-v0_0_2.type = "github";
  inputs.src-collections-v0_0_2.owner = "zielmicha";
  inputs.src-collections-v0_0_2.repo = "collections.nim";
  inputs.src-collections-v0_0_2.ref = "refs/tags/v0.0.2";
  
  outputs = { self, nixpkgs, src-collections-v0_0_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-collections-v0_0_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-collections-v0_0_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}