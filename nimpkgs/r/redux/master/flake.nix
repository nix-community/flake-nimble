{
  description = ''Predictable state container.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-redux-master.flake = false;
  inputs.src-redux-master.type = "github";
  inputs.src-redux-master.owner = "pragmagic";
  inputs.src-redux-master.repo = "redux.nim";
  inputs.src-redux-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-redux-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-redux-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-redux-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}