{
  description = ''Open Source Routing Machine for OpenStreetMap API Lib and App'';
  inputs.src-osrm-master.flake = false;
  inputs.src-osrm-master.type = "github";
  inputs.src-osrm-master.owner = "juancarlospaco";
  inputs.src-osrm-master.repo = "nim-osrm";
  inputs.src-osrm-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-osrm-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-osrm-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-osrm-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}