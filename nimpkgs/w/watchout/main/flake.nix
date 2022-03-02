{
  description = ''⚡️ Just... yellin' for changes! File System Monitor for devs'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-watchout-main.flake = false;
  inputs.src-watchout-main.type = "github";
  inputs.src-watchout-main.owner = "openpeep";
  inputs.src-watchout-main.repo = "watchout";
  inputs.src-watchout-main.ref = "refs/heads/main";
  inputs.src-watchout-main.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-watchout-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-watchout-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-watchout-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}