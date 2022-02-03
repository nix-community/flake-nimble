{
  description = ''Shamir secret sharing'';
  inputs.src-sss-0_3_2.flake = false;
  inputs.src-sss-0_3_2.type = "github";
  inputs.src-sss-0_3_2.owner = "markspanbroek";
  inputs.src-sss-0_3_2.repo = "sss.nim";
  inputs.src-sss-0_3_2.ref = "refs/tags/0.3.2";
  
  outputs = { self, nixpkgs, src-sss-0_3_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sss-0_3_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-sss-0_3_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}