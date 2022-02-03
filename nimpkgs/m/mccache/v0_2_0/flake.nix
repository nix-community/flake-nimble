{
  description = ''mccache package: in-memory caching'';
  inputs.src-mccache-v0_2_0.flake = false;
  inputs.src-mccache-v0_2_0.type = "github";
  inputs.src-mccache-v0_2_0.owner = "abbeymart";
  inputs.src-mccache-v0_2_0.repo = "mccache-nim";
  inputs.src-mccache-v0_2_0.ref = "refs/tags/v0.2.0";
  
  outputs = { self, nixpkgs, src-mccache-v0_2_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-mccache-v0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-mccache-v0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}