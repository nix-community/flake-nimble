{
  description = ''The Nim framework for VK API.'';
  inputs.src-shizuka-v0_2_2.flake = false;
  inputs.src-shizuka-v0_2_2.type = "github";
  inputs.src-shizuka-v0_2_2.owner = "ethosa";
  inputs.src-shizuka-v0_2_2.repo = "shizuka";
  inputs.src-shizuka-v0_2_2.ref = "refs/tags/v0.2.2";
  
  outputs = { self, nixpkgs, src-shizuka-v0_2_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-shizuka-v0_2_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-shizuka-v0_2_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}