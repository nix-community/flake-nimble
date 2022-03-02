{
  description = ''Extends stdlib make it easy on some case'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-stdext-0_0_8.flake = false;
  inputs.src-stdext-0_0_8.type = "github";
  inputs.src-stdext-0_0_8.owner = "zendbit";
  inputs.src-stdext-0_0_8.repo = "nim.stdext";
  inputs.src-stdext-0_0_8.ref = "refs/tags/0.0.8";
  inputs.src-stdext-0_0_8.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-stdext-0_0_8, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-stdext-0_0_8;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-stdext-0_0_8"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}