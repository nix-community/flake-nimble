{
  description = ''glue code generator to bind Nim and Lua together using Nim's powerful macro'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-nimLUA-master.flake = false;
  inputs.src-nimLUA-master.type = "github";
  inputs.src-nimLUA-master.owner = "jangko";
  inputs.src-nimLUA-master.repo = "nimLUA";
  inputs.src-nimLUA-master.ref = "refs/heads/master";
  inputs.src-nimLUA-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimLUA-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimLUA-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimLUA-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}