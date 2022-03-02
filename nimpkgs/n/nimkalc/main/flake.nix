{
  description = ''An advanced parsing library for mathematical expressions and equations'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-nimkalc-main.flake = false;
  inputs.src-nimkalc-main.type = "github";
  inputs.src-nimkalc-main.owner = "nocturn9x";
  inputs.src-nimkalc-main.repo = "nimkalc";
  inputs.src-nimkalc-main.ref = "refs/heads/main";
  inputs.src-nimkalc-main.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimkalc-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimkalc-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimkalc-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}