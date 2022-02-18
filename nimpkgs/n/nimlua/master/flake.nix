{
  description = ''glue code generator to bind Nim and Lua together using Nim's powerful macro'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimlua-master.flake = false;
  inputs.src-nimlua-master.type = "github";
  inputs.src-nimlua-master.owner = "jangko";
  inputs.src-nimlua-master.repo = "nimLUA";
  inputs.src-nimlua-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimlua-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimlua-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimlua-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}