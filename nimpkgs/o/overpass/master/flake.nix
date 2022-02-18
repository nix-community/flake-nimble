{
  description = ''OpenStreetMap Overpass API Lib'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-overpass-master.flake = false;
  inputs.src-overpass-master.type = "github";
  inputs.src-overpass-master.owner = "juancarlospaco";
  inputs.src-overpass-master.repo = "nim-overpass";
  inputs.src-overpass-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-overpass-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-overpass-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-overpass-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}