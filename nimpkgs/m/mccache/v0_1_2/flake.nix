{
  description = ''mccache package: in-memory caching'';
  inputs.src-mccache-v0_1_2.flake = false;
  inputs.src-mccache-v0_1_2.type = "github";
  inputs.src-mccache-v0_1_2.owner = "abbeymart";
  inputs.src-mccache-v0_1_2.repo = "mccache-nim";
  inputs.src-mccache-v0_1_2.ref = "refs/tags/v0.1.2";
  
  outputs = { self, nixpkgs, src-mccache-v0_1_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-mccache-v0_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-mccache-v0_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}