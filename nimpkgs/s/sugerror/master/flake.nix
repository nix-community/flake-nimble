{
  description = ''Terse and composable error handling.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-sugerror-master.flake = false;
  inputs.src-sugerror-master.type = "github";
  inputs.src-sugerror-master.owner = "quelklef";
  inputs.src-sugerror-master.repo = "nim-sugerror";
  inputs.src-sugerror-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-sugerror-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sugerror-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-sugerror-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}