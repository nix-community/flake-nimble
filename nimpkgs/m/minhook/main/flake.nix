{
  description = ''MinHook wrapper for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-minhook-main.flake = false;
  inputs.src-minhook-main.type = "github";
  inputs.src-minhook-main.owner = "khchen";
  inputs.src-minhook-main.repo = "minhook";
  inputs.src-minhook-main.ref = "refs/heads/main";
  inputs.src-minhook-main.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-minhook-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-minhook-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-minhook-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}