{
  description = ''A wrapper for stb_image and stb_image_write.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-stb_image-master.flake = false;
  inputs.src-stb_image-master.type = "gitlab";
  inputs.src-stb_image-master.owner = "define-private-public";
  inputs.src-stb_image-master.repo = "stb_image-Nim";
  inputs.src-stb_image-master.ref = "refs/heads/master";
  inputs.src-stb_image-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-stb_image-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-stb_image-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-stb_image-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}