{
  description = ''A wrapper for the vk.com API (russian social network)'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-vkapi-v1_2_1.flake = false;
  inputs.src-vkapi-v1_2_1.type = "github";
  inputs.src-vkapi-v1_2_1.owner = "Yardanico";
  inputs.src-vkapi-v1_2_1.repo = "nimvkapi";
  inputs.src-vkapi-v1_2_1.ref = "refs/tags/v1.2.1";
  inputs.src-vkapi-v1_2_1.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-vkapi-v1_2_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-vkapi-v1_2_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-vkapi-v1_2_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}