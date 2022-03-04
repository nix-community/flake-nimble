{
  description = ''Pub/Sub engine'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-suber-main.flake = false;
  inputs.src-suber-main.type = "github";
  inputs.src-suber-main.owner = "olliNiinivaara";
  inputs.src-suber-main.repo = "Suber";
  inputs.src-suber-main.ref = "refs/heads/main";
  inputs.src-suber-main.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."stashtable".type = "github";
  inputs."stashtable".owner = "riinr";
  inputs."stashtable".repo = "flake-nimble";
  inputs."stashtable".ref = "flake-pinning";
  inputs."stashtable".dir = "nimpkgs/s/stashtable";
  inputs."stashtable".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stashtable".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-suber-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-suber-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-suber-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}