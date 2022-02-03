{
  description = ''The Nim framework for VK API.'';
  inputs.src-shizuka-v0_2_1.flake = false;
  inputs.src-shizuka-v0_2_1.type = "github";
  inputs.src-shizuka-v0_2_1.owner = "ethosa";
  inputs.src-shizuka-v0_2_1.repo = "shizuka";
  inputs.src-shizuka-v0_2_1.ref = "refs/tags/v0.2.1";
  
  outputs = { self, nixpkgs, src-shizuka-v0_2_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-shizuka-v0_2_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-shizuka-v0_2_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}