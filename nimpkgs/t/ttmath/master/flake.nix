{
  description = ''A Nim wrapper for ttmath: big numbers with fixed size'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-ttmath-master.flake = false;
  inputs.src-ttmath-master.type = "github";
  inputs.src-ttmath-master.owner = "status-im";
  inputs.src-ttmath-master.repo = "nim-ttmath";
  inputs.src-ttmath-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-ttmath-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ttmath-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-ttmath-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}