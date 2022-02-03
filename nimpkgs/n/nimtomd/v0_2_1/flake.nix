{
  description = ''Convert a Nim file or string to Markdown'';
  inputs.src-nimtomd-v0_2_1.flake = false;
  inputs.src-nimtomd-v0_2_1.type = "github";
  inputs.src-nimtomd-v0_2_1.owner = "ThomasTJdev";
  inputs.src-nimtomd-v0_2_1.repo = "nimtomd";
  inputs.src-nimtomd-v0_2_1.ref = "refs/tags/v0.2.1";
  
  outputs = { self, nixpkgs, src-nimtomd-v0_2_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimtomd-v0_2_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimtomd-v0_2_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}