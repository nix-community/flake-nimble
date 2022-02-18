{
  description = ''Implementation of exponential backoff for nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-backoff-master.flake = false;
  inputs.src-backoff-master.type = "github";
  inputs.src-backoff-master.owner = "CORDEA";
  inputs.src-backoff-master.repo = "backoff";
  inputs.src-backoff-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-backoff-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-backoff-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-backoff-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}