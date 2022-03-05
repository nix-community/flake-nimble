{
  description = ''Bindings for the Music Player Daemon C client library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-libmpdclient-master.flake = false;
  inputs.src-libmpdclient-master.type = "github";
  inputs.src-libmpdclient-master.owner = "lompik";
  inputs.src-libmpdclient-master.repo = "libmpdclient.nim";
  inputs.src-libmpdclient-master.ref = "refs/heads/master";
  inputs.src-libmpdclient-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-libmpdclient-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-libmpdclient-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-libmpdclient-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}