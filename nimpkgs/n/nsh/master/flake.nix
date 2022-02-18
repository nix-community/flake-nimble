{
  description = ''nsh: Nim SHell(cross platform)'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nsh-master.flake = false;
  inputs.src-nsh-master.type = "github";
  inputs.src-nsh-master.owner = "gmshiba";
  inputs.src-nsh-master.repo = "nish";
  inputs.src-nsh-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nsh-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nsh-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nsh-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}