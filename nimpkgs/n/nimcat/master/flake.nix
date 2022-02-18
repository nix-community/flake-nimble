{
  description = ''An implementation of cat in Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimcat-master.flake = false;
  inputs.src-nimcat-master.type = "github";
  inputs.src-nimcat-master.owner = "shakna-israel";
  inputs.src-nimcat-master.repo = "nimcat";
  inputs.src-nimcat-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimcat-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimcat-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimcat-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}