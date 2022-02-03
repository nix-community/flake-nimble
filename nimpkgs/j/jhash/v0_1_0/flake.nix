{
  description = ''Jenkins Hasher producing 32 bit digests'';
  inputs.src-jhash-v0_1_0.flake = false;
  inputs.src-jhash-v0_1_0.type = "github";
  inputs.src-jhash-v0_1_0.owner = "mjfh";
  inputs.src-jhash-v0_1_0.repo = "nim-jhash";
  inputs.src-jhash-v0_1_0.ref = "refs/tags/v0.1.0";
  
  outputs = { self, nixpkgs, src-jhash-v0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-jhash-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-jhash-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}