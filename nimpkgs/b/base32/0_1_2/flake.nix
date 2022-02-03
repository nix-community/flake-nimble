{
  description = ''Base32 library for Nim'';
  inputs.src-base32-0_1_2.flake = false;
  inputs.src-base32-0_1_2.type = "github";
  inputs.src-base32-0_1_2.owner = "OpenSystemsLab";
  inputs.src-base32-0_1_2.repo = "base32.nim";
  inputs.src-base32-0_1_2.ref = "refs/tags/0.1.2";
  
  outputs = { self, nixpkgs, src-base32-0_1_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-base32-0_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-base32-0_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}