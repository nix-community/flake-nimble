{
  description = ''A wrapper for stb_image and stb_image_write.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-stb_image-1_6.flake = false;
  inputs.src-stb_image-1_6.type = "gitlab";
  inputs.src-stb_image-1_6.owner = "define-private-public";
  inputs.src-stb_image-1_6.repo = "stb_image-Nim";
  inputs.src-stb_image-1_6.ref = "refs/tags/1.6";
  inputs.src-stb_image-1_6.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-stb_image-1_6, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-stb_image-1_6;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-stb_image-1_6"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}