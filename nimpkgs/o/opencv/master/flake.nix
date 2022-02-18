{
  description = ''OpenCV wrapper'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-opencv-master.flake = false;
  inputs.src-opencv-master.type = "github";
  inputs.src-opencv-master.owner = "dom96";
  inputs.src-opencv-master.repo = "nim-opencv";
  inputs.src-opencv-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-opencv-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-opencv-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-opencv-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}