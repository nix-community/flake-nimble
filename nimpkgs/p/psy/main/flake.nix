{
  description = ''A fast, multi-threading and disk space efficient package manager for PHP development and production environments'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-psy-main.flake = false;
  inputs.src-psy-main.type = "github";
  inputs.src-psy-main.owner = "psypac";
  inputs.src-psy-main.repo = "psypac";
  inputs.src-psy-main.ref = "refs/heads/main";
  inputs.src-psy-main.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-psy-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-psy-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-psy-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}