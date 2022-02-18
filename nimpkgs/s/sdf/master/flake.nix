{
  description = ''Signed Distance Field builder for contour texturing in Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-sdf-master.flake = false;
  inputs.src-sdf-master.type = "github";
  inputs.src-sdf-master.owner = "Halsys";
  inputs.src-sdf-master.repo = "SDF.nim";
  inputs.src-sdf-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-sdf-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sdf-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-sdf-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}