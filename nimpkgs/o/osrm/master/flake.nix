{
  description = ''Open Source Routing Machine for OpenStreetMap API Lib and App'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-osrm-master.flake = false;
  inputs.src-osrm-master.type = "github";
  inputs.src-osrm-master.owner = "juancarlospaco";
  inputs.src-osrm-master.repo = "nim-osrm";
  inputs.src-osrm-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-osrm-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-osrm-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-osrm-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}