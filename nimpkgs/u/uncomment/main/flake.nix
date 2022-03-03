{
  description = ''uncomment the codes at the compile time'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-uncomment-main.flake = false;
  inputs.src-uncomment-main.type = "github";
  inputs.src-uncomment-main.owner = "hamidb80";
  inputs.src-uncomment-main.repo = "uncomment";
  inputs.src-uncomment-main.ref = "refs/heads/main";
  inputs.src-uncomment-main.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-uncomment-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-uncomment-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-uncomment-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}