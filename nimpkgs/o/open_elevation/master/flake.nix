{
  description = ''OpenStreetMap Elevation API MultiSync Client for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-open_elevation-master.flake = false;
  inputs.src-open_elevation-master.type = "github";
  inputs.src-open_elevation-master.owner = "juancarlospaco";
  inputs.src-open_elevation-master.repo = "nim-open-elevation";
  inputs.src-open_elevation-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-open_elevation-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-open_elevation-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-open_elevation-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}