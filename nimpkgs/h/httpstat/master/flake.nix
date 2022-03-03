{
  description = ''curl statistics made simple '';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-httpstat-master.flake = false;
  inputs.src-httpstat-master.type = "github";
  inputs.src-httpstat-master.owner = "ucpr";
  inputs.src-httpstat-master.repo = "httpstat";
  inputs.src-httpstat-master.ref = "refs/heads/master";
  inputs.src-httpstat-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-httpstat-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-httpstat-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-httpstat-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}