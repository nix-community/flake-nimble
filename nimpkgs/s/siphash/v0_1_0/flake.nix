{
  description = ''SipHash, a pseudorandom function optimized for short messages.'';
  inputs.src-siphash-v0_1_0.flake = false;
  inputs.src-siphash-v0_1_0.type = "other";
  inputs.src-siphash-v0_1_0.owner = "~ehmry";
  inputs.src-siphash-v0_1_0.repo = "nim_siphash";
  inputs.src-siphash-v0_1_0.ref = "refs/tags/v0.1.0";
  
  outputs = { self, nixpkgs, src-siphash-v0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-siphash-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-siphash-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}