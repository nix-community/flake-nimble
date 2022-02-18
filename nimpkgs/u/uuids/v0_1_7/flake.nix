{
  description = ''UUID library for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-uuids-v0_1_7.flake = false;
  inputs.src-uuids-v0_1_7.type = "github";
  inputs.src-uuids-v0_1_7.owner = "pragmagic";
  inputs.src-uuids-v0_1_7.repo = "uuids";
  inputs.src-uuids-v0_1_7.ref = "refs/tags/v0.1.7";
  
  
  inputs."isaac".type = "github";
  inputs."isaac".owner = "riinr";
  inputs."isaac".repo = "flake-nimble";
  inputs."isaac".ref = "flake-pinning";
  inputs."isaac".dir = "nimpkgs/i/isaac";

  outputs = { self, nixpkgs, flakeNimbleLib, src-uuids-v0_1_7, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-uuids-v0_1_7;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-uuids-v0_1_7"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}