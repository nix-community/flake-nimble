{
  description = ''A wrapper for stb_image and stb_image_write.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-stb_image-1_1.flake = false;
  inputs.src-stb_image-1_1.type = "gitlab";
  inputs.src-stb_image-1_1.owner = "define-private-public";
  inputs.src-stb_image-1_1.repo = "stb_image-Nim";
  inputs.src-stb_image-1_1.ref = "refs/tags/1.1";
  inputs.src-stb_image-1_1.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-stb_image-1_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-stb_image-1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-stb_image-1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}