{
  description = ''daemonizer for Unix, Linux and OS X'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-daemonim-master.flake = false;
  inputs.src-daemonim-master.type = "github";
  inputs.src-daemonim-master.owner = "bung87";
  inputs.src-daemonim-master.repo = "daemon";
  inputs.src-daemonim-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-daemonim-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-daemonim-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-daemonim-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}