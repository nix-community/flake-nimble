{
  description = ''Extends stdlib make it easy on some case'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-stdext-v0_0_9.flake = false;
  inputs.src-stdext-v0_0_9.type = "github";
  inputs.src-stdext-v0_0_9.owner = "zendbit";
  inputs.src-stdext-v0_0_9.repo = "nim.stdext";
  inputs.src-stdext-v0_0_9.ref = "refs/tags/v0.0.9";
  inputs.src-stdext-v0_0_9.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-stdext-v0_0_9, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-stdext-v0_0_9;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-stdext-v0_0_9"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}