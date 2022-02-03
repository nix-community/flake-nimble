{
  description = ''Deal with Windows Registry from Nim.'';
  inputs.src-winregistry-v0_2_1.flake = false;
  inputs.src-winregistry-v0_2_1.type = "github";
  inputs.src-winregistry-v0_2_1.owner = "miere43";
  inputs.src-winregistry-v0_2_1.repo = "nim-registry";
  inputs.src-winregistry-v0_2_1.ref = "refs/tags/v0.2.1";
  
  outputs = { self, nixpkgs, src-winregistry-v0_2_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-winregistry-v0_2_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-winregistry-v0_2_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}