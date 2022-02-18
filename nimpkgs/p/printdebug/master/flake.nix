{
  description = ''Print Debug for Nim, tiny 3 lines Lib, C Target'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-printdebug-master.flake = false;
  inputs.src-printdebug-master.type = "github";
  inputs.src-printdebug-master.owner = "juancarlospaco";
  inputs.src-printdebug-master.repo = "nim-printdebug";
  inputs.src-printdebug-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-printdebug-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-printdebug-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-printdebug-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}