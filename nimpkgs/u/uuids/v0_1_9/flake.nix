{
  description = ''UUID library for Nim'';
  inputs.src-uuids-v0_1_9.flake = false;
  inputs.src-uuids-v0_1_9.type = "github";
  inputs.src-uuids-v0_1_9.owner = "pragmagic";
  inputs.src-uuids-v0_1_9.repo = "uuids";
  inputs.src-uuids-v0_1_9.ref = "refs/tags/v0.1.9";
  
  
  inputs."isaac".url = "path:../../../i/isaac";
  inputs."isaac".type = "github";
  inputs."isaac".owner = "riinr";
  inputs."isaac".repo = "flake-nimble";
  inputs."isaac".ref = "flake-pinning";
  inputs."isaac".dir = "nimpkgs/i/isaac";

  outputs = { self, nixpkgs, src-uuids-v0_1_9, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-uuids-v0_1_9;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-uuids-v0_1_9"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}