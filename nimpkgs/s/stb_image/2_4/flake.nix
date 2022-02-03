{
  description = ''A wrapper for stb_image and stb_image_write.'';
  inputs.src-stb_image-2_4.flake = false;
  inputs.src-stb_image-2_4.type = "gitlab";
  inputs.src-stb_image-2_4.owner = "define-private-public";
  inputs.src-stb_image-2_4.repo = "stb_image-Nim";
  inputs.src-stb_image-2_4.ref = "refs/tags/2.4";
  
  outputs = { self, nixpkgs, src-stb_image-2_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-stb_image-2_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-stb_image-2_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}