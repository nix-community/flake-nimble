{
  description = ''A wrapper for stb_image and stb_image_write.'';
  inputs.src-stb_image-master.flake = false;
  inputs.src-stb_image-master.type = "gitlab";
  inputs.src-stb_image-master.owner = "define-private-public";
  inputs.src-stb_image-master.repo = "stb_image-Nim";
  inputs.src-stb_image-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-stb_image-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-stb_image-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-stb_image-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}