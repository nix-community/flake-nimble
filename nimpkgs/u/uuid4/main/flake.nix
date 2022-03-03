{
  description = ''UUIDs in pure Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-uuid4-main.flake = false;
  inputs.src-uuid4-main.type = "github";
  inputs.src-uuid4-main.owner = "vtbassmatt";
  inputs.src-uuid4-main.repo = "nim-uuid4";
  inputs.src-uuid4-main.ref = "refs/heads/main";
  inputs.src-uuid4-main.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-uuid4-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-uuid4-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-uuid4-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}