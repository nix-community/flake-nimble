{
  description = ''A small library for writing cli programs in Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-loki-master.flake = false;
  inputs.src-loki-master.type = "github";
  inputs.src-loki-master.owner = "beshrkayali";
  inputs.src-loki-master.repo = "loki";
  inputs.src-loki-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-loki-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-loki-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-loki-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}