{
  description = ''Nim module for parsing GPX (GPS Exchange format) files'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-gpx-master.flake = false;
  inputs.src-gpx-master.type = "github";
  inputs.src-gpx-master.owner = "achesak";
  inputs.src-gpx-master.repo = "nim-gpx";
  inputs.src-gpx-master.ref = "refs/heads/master";
  inputs.src-gpx-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-gpx-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-gpx-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-gpx-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}