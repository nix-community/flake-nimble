{
  description = ''Deal with Windows Registry from Nim.'';
  inputs.src-winregistry-v0_1_8.flake = false;
  inputs.src-winregistry-v0_1_8.type = "github";
  inputs.src-winregistry-v0_1_8.owner = "miere43";
  inputs.src-winregistry-v0_1_8.repo = "nim-registry";
  inputs.src-winregistry-v0_1_8.ref = "refs/tags/v0.1.8";
  
  outputs = { self, nixpkgs, src-winregistry-v0_1_8, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-winregistry-v0_1_8;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-winregistry-v0_1_8"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}