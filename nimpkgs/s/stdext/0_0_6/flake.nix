{
  description = ''Extends stdlib make it easy on some case'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-stdext-0_0_6.flake = false;
  inputs.src-stdext-0_0_6.type = "github";
  inputs.src-stdext-0_0_6.owner = "zendbit";
  inputs.src-stdext-0_0_6.repo = "nim.stdext";
  inputs.src-stdext-0_0_6.ref = "refs/tags/0.0.6";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-stdext-0_0_6, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-stdext-0_0_6;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-stdext-0_0_6"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}