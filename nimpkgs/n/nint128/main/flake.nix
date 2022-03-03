{
  description = ''128-bit integers'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-nint128-main.flake = false;
  inputs.src-nint128-main.type = "github";
  inputs.src-nint128-main.owner = "rockcavera";
  inputs.src-nint128-main.repo = "nim-nint128";
  inputs.src-nint128-main.ref = "refs/heads/main";
  inputs.src-nint128-main.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nint128-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nint128-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nint128-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}