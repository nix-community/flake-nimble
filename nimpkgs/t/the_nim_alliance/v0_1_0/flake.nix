{
  description = ''A Nim wrapper for TheBlueAlliance'';
  inputs.src-the_nim_alliance-v0_1_0.flake = false;
  inputs.src-the_nim_alliance-v0_1_0.type = "github";
  inputs.src-the_nim_alliance-v0_1_0.owner = "tervay";
  inputs.src-the_nim_alliance-v0_1_0.repo = "the-nim-alliance";
  inputs.src-the_nim_alliance-v0_1_0.ref = "refs/tags/v0.1.0";
  
  outputs = { self, nixpkgs, src-the_nim_alliance-v0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-the_nim_alliance-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-the_nim_alliance-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}