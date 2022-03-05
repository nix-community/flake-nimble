{
  description = ''Shell command manager'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-oblivion-main.flake = false;
  inputs.src-oblivion-main.type = "github";
  inputs.src-oblivion-main.owner = "sealmove";
  inputs.src-oblivion-main.repo = "oblivion";
  inputs.src-oblivion-main.ref = "refs/heads/main";
  inputs.src-oblivion-main.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-oblivion-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-oblivion-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-oblivion-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}