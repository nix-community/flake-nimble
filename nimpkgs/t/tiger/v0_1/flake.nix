{
  description = ''Tiger hash function'';
  inputs.src-tiger-v0_1.flake = false;
  inputs.src-tiger-v0_1.type = "other";
  inputs.src-tiger-v0_1.owner = "~ehmry";
  inputs.src-tiger-v0_1.repo = "nim_tiger";
  inputs.src-tiger-v0_1.ref = "refs/tags/v0.1";
  
  outputs = { self, nixpkgs, src-tiger-v0_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-tiger-v0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-tiger-v0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}