{
  description = ''🍕🍺 emoji support for Nim 👑 and the world 🌍'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-nimoji-master.flake = false;
  inputs.src-nimoji-master.type = "github";
  inputs.src-nimoji-master.owner = "pietroppeter";
  inputs.src-nimoji-master.repo = "nimoji";
  inputs.src-nimoji-master.ref = "refs/heads/master";
  inputs.src-nimoji-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimoji-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimoji-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimoji-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}