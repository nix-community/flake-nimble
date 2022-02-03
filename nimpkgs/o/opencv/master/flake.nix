{
  description = ''OpenCV wrapper'';
  inputs.src-opencv-master.flake = false;
  inputs.src-opencv-master.type = "github";
  inputs.src-opencv-master.owner = "dom96";
  inputs.src-opencv-master.repo = "nim-opencv";
  inputs.src-opencv-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-opencv-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-opencv-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-opencv-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}