{
  description = ''TeaFiles provide fast read/write access to time series data'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-teafiles-master.flake = false;
  inputs.src-teafiles-master.type = "github";
  inputs.src-teafiles-master.owner = "andreaferretti";
  inputs.src-teafiles-master.repo = "nim-teafiles";
  inputs.src-teafiles-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-teafiles-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-teafiles-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-teafiles-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}