{
  description = ''better cookie handling'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-biscuits-master.flake = false;
  inputs.src-biscuits-master.type = "github";
  inputs.src-biscuits-master.owner = "achesak";
  inputs.src-biscuits-master.repo = "nim-biscuits";
  inputs.src-biscuits-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-biscuits-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-biscuits-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-biscuits-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}