{
  description = ''Command-line utility for Tangling of Org mode documents'';
  inputs.src-ntangle-v0_1_1.flake = false;
  inputs.src-ntangle-v0_1_1.type = "github";
  inputs.src-ntangle-v0_1_1.owner = "OrgTangle";
  inputs.src-ntangle-v0_1_1.repo = "ntangle";
  inputs.src-ntangle-v0_1_1.ref = "refs/tags/v0.1.1";
  
  outputs = { self, nixpkgs, src-ntangle-v0_1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ntangle-v0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-ntangle-v0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}