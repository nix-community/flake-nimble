{
  description = ''A wrapper for the vk.com API (russian social network)'';
  inputs.src-vkapi-master.flake = false;
  inputs.src-vkapi-master.type = "github";
  inputs.src-vkapi-master.owner = "Yardanico";
  inputs.src-vkapi-master.repo = "nimvkapi";
  inputs.src-vkapi-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-vkapi-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-vkapi-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-vkapi-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}