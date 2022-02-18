{
  description = ''Print fabulously in your terminal'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-fab-master.flake = false;
  inputs.src-fab-master.type = "github";
  inputs.src-fab-master.owner = "icyphox";
  inputs.src-fab-master.repo = "fab";
  inputs.src-fab-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-fab-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-fab-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-fab-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}