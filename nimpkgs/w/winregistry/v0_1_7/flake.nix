{
  description = ''Deal with Windows Registry from Nim.'';
  inputs.src-winregistry-v0_1_7.flake = false;
  inputs.src-winregistry-v0_1_7.type = "github";
  inputs.src-winregistry-v0_1_7.owner = "miere43";
  inputs.src-winregistry-v0_1_7.repo = "nim-registry";
  inputs.src-winregistry-v0_1_7.ref = "refs/tags/v0.1.7";
  
  outputs = { self, nixpkgs, src-winregistry-v0_1_7, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-winregistry-v0_1_7;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-winregistry-v0_1_7"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}