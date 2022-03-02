{
  description = ''Signed Distance Field builder for contour texturing in Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-SDF-master.flake = false;
  inputs.src-SDF-master.type = "github";
  inputs.src-SDF-master.owner = "Halsys";
  inputs.src-SDF-master.repo = "SDF.nim";
  inputs.src-SDF-master.ref = "refs/heads/master";
  inputs.src-SDF-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-SDF-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-SDF-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-SDF-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}