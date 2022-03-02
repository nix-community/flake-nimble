{
  description = ''Extends stdlib make it easy on some case'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-stdext-v0_0_11.flake = false;
  inputs.src-stdext-v0_0_11.type = "github";
  inputs.src-stdext-v0_0_11.owner = "zendbit";
  inputs.src-stdext-v0_0_11.repo = "nim.stdext";
  inputs.src-stdext-v0_0_11.ref = "refs/tags/v0.0.11";
  inputs.src-stdext-v0_0_11.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-stdext-v0_0_11, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-stdext-v0_0_11;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-stdext-v0_0_11"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}