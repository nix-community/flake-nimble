{
  description = ''Wrapper to interface with the Lua interpreter'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-lua-master.flake = false;
  inputs.src-lua-master.type = "github";
  inputs.src-lua-master.owner = "nim-lang";
  inputs.src-lua-master.repo = "lua";
  inputs.src-lua-master.ref = "refs/heads/master";
  inputs.src-lua-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-lua-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-lua-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-lua-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}