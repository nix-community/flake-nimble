{
  description = ''Lua convenience library for nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-luna-master.flake = false;
  inputs.src-luna-master.type = "github";
  inputs.src-luna-master.owner = "smallfx";
  inputs.src-luna-master.repo = "luna.nim";
  inputs.src-luna-master.ref = "refs/heads/master";
  inputs.src-luna-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-luna-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-luna-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-luna-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}