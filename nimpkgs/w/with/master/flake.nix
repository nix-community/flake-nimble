{
  description = ''Simple 'with' macro for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-with-master.flake = false;
  inputs.src-with-master.type = "github";
  inputs.src-with-master.owner = "zevv";
  inputs.src-with-master.repo = "with";
  inputs.src-with-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-with-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-with-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-with-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}