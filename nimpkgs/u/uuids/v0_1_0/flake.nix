{
  description = ''UUID library for Nim'';
  inputs.src-uuids-v0_1_0.flake = false;
  inputs.src-uuids-v0_1_0.type = "github";
  inputs.src-uuids-v0_1_0.owner = "pragmagic";
  inputs.src-uuids-v0_1_0.repo = "uuids";
  inputs.src-uuids-v0_1_0.ref = "refs/tags/v0.1.0";
  
  outputs = { self, nixpkgs, src-uuids-v0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-uuids-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-uuids-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}