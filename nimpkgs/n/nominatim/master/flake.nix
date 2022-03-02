{
  description = ''OpenStreetMap Nominatim API Lib for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-nominatim-master.flake = false;
  inputs.src-nominatim-master.type = "github";
  inputs.src-nominatim-master.owner = "juancarlospaco";
  inputs.src-nominatim-master.repo = "nim-nominatim";
  inputs.src-nominatim-master.ref = "refs/heads/master";
  inputs.src-nominatim-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nominatim-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nominatim-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nominatim-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}