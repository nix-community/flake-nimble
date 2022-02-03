{
  description = ''Nim wrapper for the osdialog library'';
  inputs.src-osdialog-v0_1_0.flake = false;
  inputs.src-osdialog-v0_1_0.type = "github";
  inputs.src-osdialog-v0_1_0.owner = "johnnovak";
  inputs.src-osdialog-v0_1_0.repo = "nim-osdialog";
  inputs.src-osdialog-v0_1_0.ref = "refs/tags/v0.1.0";
  
  outputs = { self, nixpkgs, src-osdialog-v0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-osdialog-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-osdialog-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}