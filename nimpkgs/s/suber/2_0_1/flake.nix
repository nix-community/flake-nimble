{
  description = ''Pub/Sub engine'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-suber-2_0_1.flake = false;
  inputs.src-suber-2_0_1.type = "github";
  inputs.src-suber-2_0_1.owner = "olliNiinivaara";
  inputs.src-suber-2_0_1.repo = "Suber";
  inputs.src-suber-2_0_1.ref = "refs/tags/2.0.1";
  
  
  inputs."stashtable".type = "github";
  inputs."stashtable".owner = "riinr";
  inputs."stashtable".repo = "flake-nimble";
  inputs."stashtable".ref = "flake-pinning";
  inputs."stashtable".dir = "nimpkgs/s/stashtable";

  outputs = { self, nixpkgs, flakeNimbleLib, src-suber-2_0_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-suber-2_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-suber-2_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}