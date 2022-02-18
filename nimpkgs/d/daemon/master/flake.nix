{
  description = ''Cross-platform process daemonization library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-daemon-master.flake = false;
  inputs.src-daemon-master.type = "github";
  inputs.src-daemon-master.owner = "status-im";
  inputs.src-daemon-master.repo = "nim-daemon";
  inputs.src-daemon-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-daemon-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-daemon-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-daemon-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}