{
  description = ''Pari/GP C library wrapper'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-pari-master.flake = false;
  inputs.src-pari-master.type = "github";
  inputs.src-pari-master.owner = "lompik";
  inputs.src-pari-master.repo = "pari.nim";
  inputs.src-pari-master.ref = "refs/heads/master";
  inputs.src-pari-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-pari-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pari-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-pari-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}