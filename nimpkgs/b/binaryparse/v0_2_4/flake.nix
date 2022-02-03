{
  description = ''Binary parser (and writer) in pure Nim. Generates efficient parsing procedures that handle many commonly seen patterns seen in binary files and does sub-byte field reading.'';
  inputs.src-binaryparse-v0_2_4.flake = false;
  inputs.src-binaryparse-v0_2_4.type = "github";
  inputs.src-binaryparse-v0_2_4.owner = "PMunch";
  inputs.src-binaryparse-v0_2_4.repo = "binaryparse";
  inputs.src-binaryparse-v0_2_4.ref = "refs/tags/v0.2.4";
  
  outputs = { self, nixpkgs, src-binaryparse-v0_2_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-binaryparse-v0_2_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-binaryparse-v0_2_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}