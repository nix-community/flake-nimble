{
  description = ''A wrapper for stb_image and stb_image_write.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-stb_image-2_3.flake = false;
  inputs.src-stb_image-2_3.type = "gitlab";
  inputs.src-stb_image-2_3.owner = "define-private-public";
  inputs.src-stb_image-2_3.repo = "stb_image-Nim";
  inputs.src-stb_image-2_3.ref = "refs/tags/2.3";
  inputs.src-stb_image-2_3.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-stb_image-2_3, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-stb_image-2_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-stb_image-2_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}