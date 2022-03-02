{
  description = ''Pub/Sub engine'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-suber-1_0_0.flake = false;
  inputs.src-suber-1_0_0.type = "github";
  inputs.src-suber-1_0_0.owner = "olliNiinivaara";
  inputs.src-suber-1_0_0.repo = "Suber";
  inputs.src-suber-1_0_0.ref = "refs/tags/1.0.0";
  inputs.src-suber-1_0_0.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."stashtable".type = "github";
  # inputs."stashtable".owner = "riinr";
  # inputs."stashtable".repo = "flake-nimble";
  # inputs."stashtable".ref = "flake-pinning";
  # inputs."stashtable".dir = "nimpkgs/s/stashtable";
  # inputs."stashtable".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."stashtable".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-suber-1_0_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-suber-1_0_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-suber-1_0_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}