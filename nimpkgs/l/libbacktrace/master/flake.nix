{
  description = ''Nim wrapper for libbacktrace'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-libbacktrace-master.flake = false;
  inputs.src-libbacktrace-master.type = "github";
  inputs.src-libbacktrace-master.owner = "status-im";
  inputs.src-libbacktrace-master.repo = "nim-libbacktrace";
  inputs.src-libbacktrace-master.ref = "refs/heads/master";
  inputs.src-libbacktrace-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-libbacktrace-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-libbacktrace-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-libbacktrace-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}