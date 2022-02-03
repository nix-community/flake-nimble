{
  description = ''A wrapper for the vk.com API (russian social network)'';
  inputs.src-vkapi-v1_3_1.flake = false;
  inputs.src-vkapi-v1_3_1.type = "github";
  inputs.src-vkapi-v1_3_1.owner = "Yardanico";
  inputs.src-vkapi-v1_3_1.repo = "nimvkapi";
  inputs.src-vkapi-v1_3_1.ref = "refs/tags/v1.3.1";
  
  outputs = { self, nixpkgs, src-vkapi-v1_3_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-vkapi-v1_3_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-vkapi-v1_3_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}