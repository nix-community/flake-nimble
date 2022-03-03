{
  description = ''System libraries for the Genode Operating System Framework'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-genode-master.flake = false;
  inputs.src-genode-master.type = "other";
  inputs.src-genode-master.owner = "~ehmry";
  inputs.src-genode-master.repo = "nim_genode";
  inputs.src-genode-master.ref = "refs/heads/master";
  inputs.src-genode-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-genode-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-genode-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-genode-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}