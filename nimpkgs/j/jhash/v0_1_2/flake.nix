{
  description = ''Jenkins Hasher producing 32 bit digests'';
  inputs.src-jhash-v0_1_2.flake = false;
  inputs.src-jhash-v0_1_2.type = "github";
  inputs.src-jhash-v0_1_2.owner = "mjfh";
  inputs.src-jhash-v0_1_2.repo = "nim-jhash";
  inputs.src-jhash-v0_1_2.ref = "refs/tags/v0.1.2";
  
  outputs = { self, nixpkgs, src-jhash-v0_1_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-jhash-v0_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-jhash-v0_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}