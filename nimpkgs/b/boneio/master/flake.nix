{
  description = ''A low level GPIO library for the BeagleBone board family'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-boneio-master.flake = false;
  inputs.src-boneio-master.type = "github";
  inputs.src-boneio-master.owner = "xyz32";
  inputs.src-boneio-master.repo = "boneIO";
  inputs.src-boneio-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-boneio-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-boneio-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-boneio-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}