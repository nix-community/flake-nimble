{
  description = ''libffi wrapper for Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-libffi-master.flake = false;
  inputs.src-libffi-master.type = "github";
  inputs.src-libffi-master.owner = "Araq";
  inputs.src-libffi-master.repo = "libffi";
  inputs.src-libffi-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-libffi-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-libffi-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-libffi-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}