{
  description = ''glue code generator to bind Nim and Lua together using Nim's powerful macro'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimlua-v0_3_8.flake = false;
  inputs.src-nimlua-v0_3_8.type = "github";
  inputs.src-nimlua-v0_3_8.owner = "jangko";
  inputs.src-nimlua-v0_3_8.repo = "nimLUA";
  inputs.src-nimlua-v0_3_8.ref = "refs/tags/v0.3.8";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimlua-v0_3_8, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimlua-v0_3_8;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimlua-v0_3_8"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}