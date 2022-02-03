{
  description = ''Open Source Routing Machine for OpenStreetMap API Lib and App'';
  inputs.src-osrm-0_1_5.flake = false;
  inputs.src-osrm-0_1_5.type = "github";
  inputs.src-osrm-0_1_5.owner = "juancarlospaco";
  inputs.src-osrm-0_1_5.repo = "nim-osrm";
  inputs.src-osrm-0_1_5.ref = "refs/tags/0.1.5";
  
  outputs = { self, nixpkgs, src-osrm-0_1_5, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-osrm-0_1_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-osrm-0_1_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}