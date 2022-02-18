{
  description = ''Ping hosts using tcp packets'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-tcping-master.flake = false;
  inputs.src-tcping-master.type = "github";
  inputs.src-tcping-master.owner = "pdrb";
  inputs.src-tcping-master.repo = "tcping";
  inputs.src-tcping-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-tcping-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-tcping-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-tcping-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}