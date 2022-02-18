{
  description = ''osu! replay parser'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-osureplay-master.flake = false;
  inputs.src-osureplay-master.type = "github";
  inputs.src-osureplay-master.owner = "Yardanico";
  inputs.src-osureplay-master.repo = "nim-osureplay";
  inputs.src-osureplay-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-osureplay-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-osureplay-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-osureplay-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}