{
  description = ''NOAA weather API wrapper'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-noaa-master.flake = false;
  inputs.src-noaa-master.type = "github";
  inputs.src-noaa-master.owner = "achesak";
  inputs.src-noaa-master.repo = "nim-noaa";
  inputs.src-noaa-master.ref = "refs/heads/master";
  inputs.src-noaa-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-noaa-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-noaa-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-noaa-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}