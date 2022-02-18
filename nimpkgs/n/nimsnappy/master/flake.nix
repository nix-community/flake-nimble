{
  description = ''Nim wrapper for the snappy compression library. there is also a high-level API for easy use'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimsnappy-master.flake = false;
  inputs.src-nimsnappy-master.type = "github";
  inputs.src-nimsnappy-master.owner = "dfdeshom";
  inputs.src-nimsnappy-master.repo = "nimsnappy";
  inputs.src-nimsnappy-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimsnappy-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimsnappy-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimsnappy-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}