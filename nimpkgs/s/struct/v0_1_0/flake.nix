{
  description = ''Python-like 'struct' for Nim'';
  inputs.src-struct-v0_1_0.flake = false;
  inputs.src-struct-v0_1_0.type = "github";
  inputs.src-struct-v0_1_0.owner = "OpenSystemsLab";
  inputs.src-struct-v0_1_0.repo = "struct.nim";
  inputs.src-struct-v0_1_0.ref = "refs/tags/v0.1.0";
  
  outputs = { self, nixpkgs, src-struct-v0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-struct-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-struct-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}