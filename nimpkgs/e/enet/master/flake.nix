{
  description = ''Wrapper for ENet UDP networking library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-enet-master.flake = false;
  inputs.src-enet-master.type = "github";
  inputs.src-enet-master.owner = "fowlmouth";
  inputs.src-enet-master.repo = "nimrod-enet";
  inputs.src-enet-master.ref = "refs/heads/master";
  inputs.src-enet-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-enet-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-enet-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-enet-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}