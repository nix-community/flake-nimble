{
  description = ''NOAA weather API wrapper'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-noaa-master.flake = false;
  inputs.src-noaa-master.type = "github";
  inputs.src-noaa-master.owner = "achesak";
  inputs.src-noaa-master.repo = "nim-noaa";
  inputs.src-noaa-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-noaa-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-noaa-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-noaa-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}