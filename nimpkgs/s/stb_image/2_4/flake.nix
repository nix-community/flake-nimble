{
  description = ''A wrapper for stb_image and stb_image_write.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-stb_image-2_4.flake = false;
  inputs.src-stb_image-2_4.type = "gitlab";
  inputs.src-stb_image-2_4.owner = "define-private-public";
  inputs.src-stb_image-2_4.repo = "stb_image-Nim";
  inputs.src-stb_image-2_4.ref = "refs/tags/2.4";
  inputs.src-stb_image-2_4.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-stb_image-2_4, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-stb_image-2_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-stb_image-2_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}