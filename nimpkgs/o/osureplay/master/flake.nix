{
  description = ''osu! replay parser'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-osureplay-master.flake = false;
  inputs.src-osureplay-master.type = "github";
  inputs.src-osureplay-master.owner = "Yardanico";
  inputs.src-osureplay-master.repo = "nim-osureplay";
  inputs.src-osureplay-master.ref = "refs/heads/master";
  inputs.src-osureplay-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-osureplay-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-osureplay-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-osureplay-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}