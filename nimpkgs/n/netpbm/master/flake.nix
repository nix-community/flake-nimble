{
  description = ''Wrapper for libnetpbm'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-netpbm-master.flake = false;
  inputs.src-netpbm-master.type = "github";
  inputs.src-netpbm-master.owner = "barcharcraz";
  inputs.src-netpbm-master.repo = "nim-netpbm";
  inputs.src-netpbm-master.ref = "refs/heads/master";
  inputs.src-netpbm-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-netpbm-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-netpbm-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-netpbm-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}