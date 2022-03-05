{
  description = ''A good alternative to Makefile.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-bs-main.flake = false;
  inputs.src-bs-main.type = "github";
  inputs.src-bs-main.owner = "maubg-debug";
  inputs.src-bs-main.repo = "build-sys";
  inputs.src-bs-main.ref = "refs/heads/main";
  inputs.src-bs-main.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-bs-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-bs-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-bs-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}