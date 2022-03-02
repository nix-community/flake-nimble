{
  description = ''A wrapper for stb_image and stb_image_write.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-stb_image-1_5.flake = false;
  inputs.src-stb_image-1_5.type = "gitlab";
  inputs.src-stb_image-1_5.owner = "define-private-public";
  inputs.src-stb_image-1_5.repo = "stb_image-Nim";
  inputs.src-stb_image-1_5.ref = "refs/tags/1.5";
  inputs.src-stb_image-1_5.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-stb_image-1_5, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-stb_image-1_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-stb_image-1_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}