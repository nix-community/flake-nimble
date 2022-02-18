{
  description = ''OpenStreetMap API Lib for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-openstreetmap-master.flake = false;
  inputs.src-openstreetmap-master.type = "github";
  inputs.src-openstreetmap-master.owner = "juancarlospaco";
  inputs.src-openstreetmap-master.repo = "nim-openstreetmap";
  inputs.src-openstreetmap-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-openstreetmap-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-openstreetmap-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-openstreetmap-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}