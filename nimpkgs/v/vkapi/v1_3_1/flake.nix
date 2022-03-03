{
  description = ''A wrapper for the vk.com API (russian social network)'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-vkapi-v1_3_1.flake = false;
  inputs.src-vkapi-v1_3_1.type = "github";
  inputs.src-vkapi-v1_3_1.owner = "Yardanico";
  inputs.src-vkapi-v1_3_1.repo = "nimvkapi";
  inputs.src-vkapi-v1_3_1.ref = "refs/tags/v1.3.1";
  inputs.src-vkapi-v1_3_1.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-vkapi-v1_3_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-vkapi-v1_3_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-vkapi-v1_3_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}